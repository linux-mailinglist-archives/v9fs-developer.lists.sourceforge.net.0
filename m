Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F5F9ED6FA
	for <lists+v9fs-developer@lfdr.de>; Wed, 11 Dec 2024 21:04:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1tLSvz-0007Y9-So;
	Wed, 11 Dec 2024 20:03:47 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <leocstone@gmail.com>) id 1tLSvx-0007Y3-C7
 for v9fs-developer@lists.sourceforge.net;
 Wed, 11 Dec 2024 20:03:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zjpNgAxO5KyvvV+aPXyUgI2o0mazz3K0LzFSUucmqIA=; b=XIvwfO/kllXd/UjQOfol35ZNQi
 hdPbKNXPCJj9Z6lpHL44kBsm1RyoEnC/djkq4x80yceUStHfc84WqC24TPjF6mvHVEdILrffL/5Mj
 LU359+zP7gAH0XkV5LBoPakqPukyI3Qa1fE4TDuGqtDVAlU5tWM0q0aSeB1IpvKLXmjQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zjpNgAxO5KyvvV+aPXyUgI2o0mazz3K0LzFSUucmqIA=; b=V0hYoXgI07cEkpOFh6ufmocia5
 AvJegWsdH3NIVbSEfTnhjnO6F7PvuE+xupvbz/rh7E2tw5VtWTsd63EaRxdEicygRY5Lctwb9/oVH
 z0ayh0OEBgABMHgJaJsZ4gz1j1fkJvXMxmjkgKqAbWQinauBIWhr6tgO+vc+fQasg4RE=;
Received: from mail-pg1-f182.google.com ([209.85.215.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tLSvw-0000wU-P4 for v9fs-developer@lists.sourceforge.net;
 Wed, 11 Dec 2024 20:03:45 +0000
Received: by mail-pg1-f182.google.com with SMTP id
 41be03b00d2f7-7fd17f231a7so4733923a12.0
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 11 Dec 2024 12:03:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1733947419; x=1734552219; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zjpNgAxO5KyvvV+aPXyUgI2o0mazz3K0LzFSUucmqIA=;
 b=DIw2yysZcpbycrRvtAExuawMV26JIkwb6vxA6i05CeSabpKWnh8brI26SN7F/PO09N
 gbyOsXpnmFscuWnkZhgM4tCRcCo5sjU6rHv1xFf03N+mBb2jMXBvev3paoVmVcj14/Wy
 bAVhsdyHCVbvZfNY3a7IM6gAsQvSqS8sg4Ts9vXhL/amJlk9UoITxLpbEB0L9TGWW8rS
 Ng1WUrSQFJeAtvqWZMKhw8PUaDe8bGIJvym8Pw9jmUNcV4u99myL4q2WkxLFwSYtOGW4
 UHL8naXUw8Q1FnK3uKcA2rLzbdSoOLLpCS2oQVYusbn4hR+TNOCXXO/RgqsyP2gOxbUr
 VyWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733947419; x=1734552219;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=zjpNgAxO5KyvvV+aPXyUgI2o0mazz3K0LzFSUucmqIA=;
 b=NVhHno+6qGbtLmsYTAriJBX/2i6MTp0HyxmRk5kyijY5a7UuFoSTxSP5eJWTPYqyrJ
 ShSIcoyD/k4AHSj5w7z8sNKEheqHOyUHoZ1w20zQdRyUDxfSOlj/Kjw2zg0yX5GT5QZR
 PGb10LDbZ6yrPgzxRLca4/GxBRnbpq7ojQ0+559l0ct129cF5HM3W4V5epBLQ/W+x0Rx
 RqToW8Uu5D8zyYXAV72H1D/CvdXZTgJxJ38NQeYhvZ48dJaHPinuLKLoV+h84aL6xOUC
 EhE1b3yNBG2lfEIhaN9KnUnSrherrfYogt7qiJ/vtPk2YmbUEJjGtjwgjx4CuHqYYyDc
 eq4g==
X-Forwarded-Encrypted: i=1;
 AJvYcCUOqn01iwIZ7HZGiDArRPveki/z4cglVwJG5KU6N1Mhnp13vNbkBlMHafPrsbMWTpXh4d7xQdoVuJV0VX3hYQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxvU9dVykqasl3Ya2g9BtpeBuLVfgJMY3gNmk6XnG+5U/xhEf5a
 U7jmVZNXwgWf3b7Uq0nabu+q8U7qyFJbpuq55FLUg4+XcVC5jUqq
X-Gm-Gg: ASbGncsg7trkzzRB0vz1hyRR4uDlyYqhm0+dWlHUkZUYcR4eqaOHH4sckZoK54iXdkr
 02k8YrSPTqWw3zb2TKnGqEYkcVEcmUCFAw8RkxtdsLtd8O8cvxFC4nAj2/93tljn+H+6euG3Fyc
 12ay5xqflXLhiaX/r8PGwppTDo9WxQpi2NN/ACbR+q98LPn0BD9ZCC4FtqxoRf3Am4x2fFI7iuo
 LqsuZajllnETBO0/4Mfh7g3oMby77qTdLM4/0tN1ec2mnQ0YcT8K/sJJFxlOZEIzXicEw==
X-Google-Smtp-Source: AGHT+IFkpFW//odQIKH7vFlXlfPhvueJRWLMq59qElOmOHMBZNOyfMpmd6lTVOFk+xCH3IcDg/u63A==
X-Received: by 2002:a17:90b:1c87:b0:2ee:aa28:79aa with SMTP id
 98e67ed59e1d1-2f127f7e587mr6242980a91.6.1733947418716; 
 Wed, 11 Dec 2024 12:03:38 -0800 (PST)
Received: from tc.hsd1.or.comcast.net ([2601:1c2:c104:170:a69f:44ab:93c9:b027])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-7fd4757691dsm6158725a12.18.2024.12.11.12.03.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2024 12:03:38 -0800 (PST)
From: Leo Stone <leocstone@gmail.com>
To: syzbot+03fb58296859d8dbab4d@syzkaller.appspotmail.com
Date: Wed, 11 Dec 2024 12:02:40 -0800
Message-ID: <20241211200240.103853-1-leocstone@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <675963eb.050a0220.17f54a.0038.GAE@google.com>
References: <675963eb.050a0220.17f54a.0038.GAE@google.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot creates a pipe and writes some data to it. It then
 creates a v9fs mount using the pipe as transport. The data in the pipe
 specifies
 an ACL of size 9 TB (9895604649984 bytes) for the root inode, [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.182 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [leocstone[at]gmail.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.215.182 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.215.182 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.182 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tLSvw-0000wU-P4
Subject: Re: [V9fs-developer] WARNING in __alloc_frozen_pages_noprof
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
Cc: lucho@ionkov.net, Leo Stone <leocstone@gmail.com>, ericvh@gmail.com,
 linux_oss@crudebyte.com, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, viro@zeniv.linux.org.uk,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ericvh@kernel.org, torvalds@linux-foundation.org, v9fs@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

syzbot creates a pipe and writes some data to it. It then creates a v9fs
mount using the pipe as transport. The data in the pipe specifies an ACL
of size 9 TB (9895604649984 bytes) for the root inode, causing kmalloc
to fail.

KMALLOC_MAX_SIZE is probably too loose of an upper bound for the size of
an ACL, but I didn't see an existing limit for V9FS like in e.g. NFS:

include/linux/nfsacl.h:
>/* Maximum number of ACL entries over NFS */
>#define NFS_ACL_MAX_ENTRIES     1024
>
>#define NFSACL_MAXWORDS         (2*(2+3*NFS_ACL_MAX_ENTRIES))
>#define NFSACL_MAXPAGES         ((2*(8+12*NFS_ACL_MAX_ENTRIES) + PAGE_SIZE-1) \
>                                 >> PAGE_SHIFT)
>        
>#define NFS_ACL_MAX_ENTRIES_INLINE      (5)
>#define NFS_ACL_INLINE_BUFSIZE  ((2*(2+3*NFS_ACL_MAX_ENTRIES_INLINE)) << 2)

#syz test

---
 fs/9p/acl.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/9p/acl.c b/fs/9p/acl.c
index eed551d8555f..1b9681d58f8d 100644
--- a/fs/9p/acl.c
+++ b/fs/9p/acl.c
@@ -28,6 +28,8 @@ static struct posix_acl *v9fs_fid_get_acl(struct p9_fid *fid, const char *name)
 		return ERR_PTR(size);
 	if (size == 0)
 		return ERR_PTR(-ENODATA);
+	if (size > KMALLOC_MAX_SIZE)
+		return ERR_PTR(-ERANGE);
 
 	value = kzalloc(size, GFP_NOFS);
 	if (!value)
-- 
2.43.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
