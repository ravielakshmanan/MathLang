; ModuleID = 'MathLang'

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@fmt.2 = private unnamed_addr constant [4 x i8] c"%f\0A\00"
@tmp = private unnamed_addr constant [9 x i8] c"\22Hello!\22\00"

declare i32 @printf(i8*, ...)

define i32 @main() {
entry:
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @tmp, i32 0, i32 0))
  ret i32 0
}
