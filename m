Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C81857261A2
	for <lists+v9fs-developer@lfdr.de>; Wed,  7 Jun 2023 15:48:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1q6tW7-0005F3-PB;
	Wed, 07 Jun 2023 13:48:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3i4qAZAkbAMwAGH2s33w9s770v.y66y3wCAw9u65Bw5B.u64@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1q6tW6-0005Ew-4C for v9fs-developer@lists.sourceforge.net;
 Wed, 07 Jun 2023 13:48:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pQUIevp3kmh7Rh77lhqlWB6JiMORR4Y83bN8LaMYusg=; b=H/J+Mm1Pd3eqItma0NfY1dYQSH
 PCVnlWPpEDxnS1bTqOzgMV3QMpSK0J5Ehc8hT8BcwoSQ2C6Hv/n/IRPWdPDFw4Xwtz2RxyKAai4Hf
 h6egOPP/1Ekdt/QcXbJmk4V2WK3Ik4Jn9dXIpU2i9rhb+1I/fTMkSEjkpnvOP/KiFm9k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=pQUIevp3kmh7Rh77lhqlWB6JiMORR4Y83bN8LaMYusg=; b=S
 IeLEQFgKDa2V3L6ADLmA/n0dC/nCCIiAupnroXxSwm13VjatjuGPryF4xk3kZbGnsRkOA+wXUgSeg
 gJi1mlvRoubcilSX3Q0AWtSaB+uAGQIF8s8dSu9ect6Vrs82hfhP499CW8lEKnHT7V8bRcKtRs8ee
 wVfVlk46Drx68ZEk=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1q6tW5-00DkL9-1a for v9fs-developer@lists.sourceforge.net;
 Wed, 07 Jun 2023 13:48:02 +0000
Received: by mail-io1-f69.google.com with SMTP id
 ca18e2360f4ac-7748b80141aso561649139f.0
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 07 Jun 2023 06:48:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686145675; x=1688737675;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=pQUIevp3kmh7Rh77lhqlWB6JiMORR4Y83bN8LaMYusg=;
 b=H0iJz6vrIuXjKh9BB99OQ+EQthDOECbfS0EnoQf4sdMn5/1eVcCDdo79UMlA5N2w9N
 0Qxi2mluo3vAgZzhN5TN3j3NoXv1THo1UL739KckdJFGimbiZW4KF84hgHuvSouPs8xS
 R6bkTTMvJbrUp7Dia7i8rcs/a3WfDA9ugUaXSvW5PLPJnnBhAHR0fJf4ycfW3bVbdquX
 QHe6tQTTvBmMYct80mLiwCETpuQHpRC0TNFkbaatBu6KfTUvrefshZhDhrrdntIE68Y2
 d8ILiZE10TamYArJwSKgW9LtzFVqwGIZPycSyzuRMpJS0YnSo42TdIaGdD8jFaq3bnNb
 L9yA==
X-Gm-Message-State: AC+VfDwvJaEX9oURwn7+ynOZM0maBfQ/W6udLGf9WtiH0zCVzlOgLuOl
 ikRSz/0llCp9jkmuQECB+bbkkwiyeSIt8tsDcRXq97qPACWf
X-Google-Smtp-Source: ACHHUZ5RPNC5+tKMTBl7BPNrhzt6ZZ6ENxCd2akQXW3rTYBc71dCFjfsUc8hYja6jBGCneAGrmf3AcOIbugAUV2OYnTN6hjWpRtW
MIME-Version: 1.0
X-Received: by 2002:a02:b001:0:b0:41d:be7a:21f7 with SMTP id
 p1-20020a02b001000000b0041dbe7a21f7mr2550987jah.5.1686145675512; Wed, 07 Jun
 2023 06:47:55 -0700 (PDT)
Date: Wed, 07 Jun 2023 06:47:55 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000000753ac05fd8a6256@google.com>
From: syzbot <syzbot+list2ae9773daf371845c70b@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, ericvh@gmail.com, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, lucho@ionkov.net, 
 syzkaller-bugs@googlegroups.com, v9fs-developer@lists.sourceforge.net
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello 9p maintainers/developers,
 This is a 31-day syzbot report
 for the 9p subsystem. All related reports/information can be found at:
 https://syzkaller.appspot.com/upstream/s/9p
 During the period, 0 new issues were detected and 0 were fixed. In total,
 6 issues are still open and 27 have been fixed so far. 
 Content analysis details:   (3.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.69 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q6tW5-00DkL9-1a
Subject: [V9fs-developer] [syzbot] Monthly 9p report (Jun 2023)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hello 9p maintainers/developers,

This is a 31-day syzbot report for the 9p subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/9p

During the period, 0 new issues were detected and 0 were fixed.
In total, 6 issues are still open and 27 have been fixed so far.

Some of the still happening issues:

Ref Crashes Repro Title
<1> 1157    Yes   INFO: task hung in iterate_supers
                  https://syzkaller.appspot.com/bug?extid=2349f5067b1772c1d8a5
<2> 542     Yes   WARNING in inc_nlink (3)
                  https://syzkaller.appspot.com/bug?extid=2b3af42c0644df1e4da9
<3> 268     Yes   WARNING in v9fs_fid_get_acl
                  https://syzkaller.appspot.com/bug?extid=a83dc51a78f0f4cf20da
<4> 163     Yes   BUG: corrupted list in p9_fd_cancelled (2)
                  https://syzkaller.appspot.com/bug?extid=1d26c4ed77bc6c5ed5e6

---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

To disable reminders for individual bugs, reply with the following command:
#syz set <Ref> no-reminders

To change bug's subsystems, reply with:
#syz set <Ref> subsystems: new-subsystem

You may send multiple commands in a single email message.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
