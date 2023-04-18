//
//  ListaDeTarefas.swift
//  Novo
//
//  Created by Tarik Villalobos on 12/02/23.
//

import SwiftUI

struct Task: Identifiable {
    var id = UUID()
    var name: String
    var isCompleted: Bool
}

class TaskList: ObservableObject {
    @Published var tasks: [Task] = []
    
    func addTask(name: String) {
        tasks.append(Task(name: name, isCompleted: false))
    }
    
    func toggleTask(task: Task) {
        if let index = tasks.firstIndex(where: { $0.id == task.id }) {
            tasks[index].isCompleted.toggle()
        }
    }
}

struct TaskRow: View {
    @ObservedObject var taskList: TaskList
    var task: Task
    
    var body: some View {
        HStack {
            Text(task.name)
                .strikethrough(task.isCompleted)
            Spacer()
            Button(action: {
                self.taskList.toggleTask(task: self.task)
            }) {
                Image(systemName: task.isCompleted ? "checkmark.square" : "square")
            }
        }
    }
}

struct ListaDeTarefas: View {
    @ObservedObject var taskList = TaskList()
    @State private var newTask = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Nova Tarefa", text: $newTask)
                        .padding(.horizontal)
                    Button(action: {
                        self.taskList.addTask(name: self.newTask)
                        self.newTask = ""
                    }) {
                        Image(systemName: "plus")
                    }.padding(.horizontal)
                }
                .frame(width: .infinity, height: 40)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(20)
                .padding(.horizontal)
                List {
                    ForEach(taskList.tasks) { task in
                        TaskRow(taskList: self.taskList, task: task)
                    }
                }
            }
            .navigationBarTitle("Minhas Tarefas")
        }
    }
}



struct ListaDeTarefas_Previews: PreviewProvider {
    static var previews: some View {
        ListaDeTarefas()
    }
}
