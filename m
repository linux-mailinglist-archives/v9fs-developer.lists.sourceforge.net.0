Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB5B9FA82D
	for <lists+v9fs-developer@lfdr.de>; Sun, 22 Dec 2024 21:39:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1tPSjS-0005Ux-0K;
	Sun, 22 Dec 2024 20:39:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <viksrathour001@gmail.com>) id 1tPSjQ-0005Uq-JX
 for v9fs-developer@lists.sourceforge.net;
 Sun, 22 Dec 2024 20:39:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:Reply-To:
 Message-ID:From:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G3MYC8SASoZ/ndWRkqJRsLIGEaMN4yR8qugkGycdBeU=; b=F9VlGuFjeANlGejFegi7QeLVZy
 Bntv5QQf9NCEf9bpA3IqIKcyYQI+jEVFHtLNzfPdViNaXiess1owitUrGum+BTPu27ZhPQKA5++Yp
 Ysqh+GINjzbL1TzDAruHgbX8vR+6n1N3cUJWvGNbeMl9CbLNc9szpI3Ln/00DIVMAxAc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:Reply-To:Message-ID:From:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=G3MYC8SASoZ/ndWRkqJRsLIGEaMN4yR8qugkGycdBeU=; b=B
 +/dg52lHZpiWfY6bbGgwBsbm10OxoLHXFLzlaQlHY0absbZ8JKq9LDD5pb8ITUYPSUAr4tsGLXgxm
 BrlbTr7QbMdxGG0yMDmVcEYjwxMvCWmFSHB5C3eVj6Noo3WS/L1t5xaDPp9Xm5svIMrGpaM21FF4w
 gRDJZpz3zlYXv95o=;
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tPSjP-0000xl-EY for v9fs-developer@lists.sourceforge.net;
 Sun, 22 Dec 2024 20:39:19 +0000
Received: by mail-pf1-f193.google.com with SMTP id
 d2e1a72fcca58-728ec840a8aso4124727b3a.0
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 22 Dec 2024 12:39:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1734899949; x=1735504749; darn=lists.sourceforge.net;
 h=mime-version:date:subject:to:reply-to:message-id:from:from:to:cc
 :subject:date:message-id:reply-to;
 bh=G3MYC8SASoZ/ndWRkqJRsLIGEaMN4yR8qugkGycdBeU=;
 b=bjjZkFE12+XaRoeK91W7em2u6yMUHm7WERBONYZSMdfOyNAAXKxyOiyN56wqcf1Vv5
 K8NUK02A5OK1gp+7eQIYSoW95xpYjGHBSy2uWxDRn4Bt7YPgvK8S5mQnRCtB7NdCMhFr
 QVtZsEvlkHd0O+jw/8D8Wikpi9ge6xjgxG6pGsYcZBPR48ss27ZOj7aupQFc/FOwBppq
 Wn9ToA49iEvqcu4Ms+a/BDXzmzziZKeZDExy5nrmhEdIXiFv8qjifxlrG+vPuprreHoV
 2VAR9MwLzloXT3rLuNkq/Yfc/Iqz2kkzpRNXYe2qw6wddwGOuYqg8SMHmT2He5Mt5xyZ
 +RHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734899949; x=1735504749;
 h=mime-version:date:subject:to:reply-to:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=G3MYC8SASoZ/ndWRkqJRsLIGEaMN4yR8qugkGycdBeU=;
 b=N5t4CryF7/kr6Qj7wIz/p4Q47fdBcqMRPrtmjn5JHqf6Y/00RzH/XBmhaYWTxK2zdq
 bc0we057fKA4AY7NzZzc+hTTR3FGx7YUVBXyVCN5erlpVyWOqY0LXQAW/bF0kSaOK3RF
 C42+u+AITp3JlaSKw3SRKGxFoKqmUrl9t2wHvUV2rQr0GZcQRje/fEcyp26QjYw6Qu8Q
 fST3R8qpNR23fkJ4cawMUqMKUt22e++aYscUb0KKWFPmF8wbbpCHTPSQsWBeGHo3g8l/
 Ja+c4FuKk3DVn1pcO82H1CefL0OZ2aSJxO0LQLsf9wH7Yc44YB6+Xp/C/8oMEFTfCNbj
 4nxA==
X-Gm-Message-State: AOJu0YxBnwO5ebDIzFWGz3ANorPq4r8c/WqMhegsOka1eap+Oxjegiys
 QY893Y8xiBwdw+pCSMz8N2+bmEpK8svlfdp/pBMf59Tw1jp8cNIFg6e4pilI
X-Gm-Gg: ASbGncu1cjbGy9RhLi88ixM3lBoxDt+HW3sN2j3uSd4QkEP7obs0PgYD8RfrcYPvGd1
 BOZOSFcEbjTX14Nu2mYETB3DY7lu5M0ZcLbISt3yU1JNTQ5UyUC9Q05pm3EOYLR8Aaf8iGSfL+K
 1CmuVDg+Q6QIhEaOk3EZ6vZg2W+7/9yCsvq8dJHmKR4fW3qZL7ekrD2SKl5QhmtfFW5nljQmfEl
 d3vMe2Sg5OQDrXfBMzB+N2UeUwaeHwdCQ7FuT03UKUsuknS/JaE+4E+CxOasWsZbzq4NfuNDluU
 Zoa3
X-Google-Smtp-Source: AGHT+IFywMW7otBI2YHbv4yR7m7P2QG6O5N+jcET+bMtgXhAACrvSw+Y1qxty7FWhb7zii4WTY8zeA==
X-Received: by 2002:a05:6a20:d045:b0:1db:f642:8d8b with SMTP id
 adf61e73a8af0-1e5e084ca80mr16746164637.45.1734899948740; 
 Sun, 22 Dec 2024 12:39:08 -0800 (PST)
Received: from [103.67.163.162] ([103.67.163.162])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-72aad835469sm6742585b3a.60.2024.12.22.12.39.07
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 22 Dec 2024 12:39:07 -0800 (PST)
From: "Miller. HR" <viksrathour001@gmail.com>
X-Google-Original-From: "Miller. HR" <infodesk@administration.com>
Message-ID: <f9ba736b05694e251946483b754c6f1821c6b1dcca1a584a8071f3d75bbf30c9@mx.google.com>
To: v9fs-developer@lists.sourceforge.net
Date: Sun, 22 Dec 2024 15:38:59 -0500
MIME-Version: 1.0
X-Spam-Score: 3.3 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello, I'm giving out my late husband's Yamaha Baby Grand
 Piano to any passionate instrument lover, kindly let me know if you will be
 interested or have someone who will. Thanks, Doris. 
 Content analysis details:   (3.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.210.193 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.210.193 listed in sa-trusted.bondedsender.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [viksrathour001[at]gmail.com]
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [dorisjmiller80[at]outlook.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [viksrathour001[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
X-Headers-End: 1tPSjP-0000xl-EY
Subject: [V9fs-developer] 12:22:24
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Reply-To: dorisjmiller80@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hello,
I'm giving out my late husband's Yamaha Baby Grand Piano to any passionate instrument lover, kindly let me know if you will be interested or have someone who will.

Thanks,

Doris.











_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
