function getGrade(score) {
    let grade;
    
    if (score >= 0 && score <= 30)
    {
        grade = parseInt((score - 1) / 5);
        
        grade = 'FEDCBA'[grade];
    }
    
    return grade;
}