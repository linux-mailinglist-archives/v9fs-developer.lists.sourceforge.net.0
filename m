Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0836F9731
	for <lists+v9fs-developer@lfdr.de>; Sun,  7 May 2023 08:36:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pvXzx-0001MC-8C;
	Sun, 07 May 2023 06:35:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3xEZXZAkbANcLRSD3EE7K3IIB6.9HH9E7NL7K5HGM7GM.5HF@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pvXzv-0001M3-O2 for v9fs-developer@lists.sourceforge.net;
 Sun, 07 May 2023 06:35:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eiJUNTq8JPmPAzE2IzW6oDLL/rsjau/07T9a4D7geTA=; b=UaOcrVHoY36wLQCJQu5r0QrdW6
 GIK4Pmx5jo4s+xfJGxWsieddPRwP/8txky8mOWe20juMcBFPsLloI9DQMaECmkE7pwDsnAtTC7MBW
 edlUC5Uf22V+iCIY/B9db/NRhYV2dfl1Y3wiNhMaftB7sAAnqMS32NDK2UeVG/WgaZ50=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=eiJUNTq8JPmPAzE2IzW6oDLL/rsjau/07T9a4D7geTA=; b=G
 ztzxfKDstYDqUcJGtvwpOJx2fN1LzwFX32vjIrm/uX6LlSQHVv3h+3BONyjGOIiTmO8AQVjmdGUHO
 zYFOSjKHUjCqwyZ6NOwodco2KO7LtkkgvnxuCjhIRaFUVf2EVYD75Jv2ykbDLHn2odx9bfQY4xV+B
 +mKx2VyoNmFo9kiY=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pvXzt-00H8E6-Sx for v9fs-developer@lists.sourceforge.net;
 Sun, 07 May 2023 06:35:55 +0000
Received: by mail-il1-f198.google.com with SMTP id
 e9e14a558f8ab-33539445684so2622185ab.1
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 06 May 2023 23:35:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683441348; x=1686033348;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=eiJUNTq8JPmPAzE2IzW6oDLL/rsjau/07T9a4D7geTA=;
 b=M9ocvBK9HVpMIJaNmGW+4lTY4xtzIsJ4WQmGk2O3UR4H5DjC4lYg6UpRuTJG07HtTd
 oenNo4M510RS8gWjlyCEKJjsSyYlHCITgt28nq/7Z6Q4ijfxIdGO9lIDiVjDK+B2vhmA
 g2SvpE/VNiQeOfWSQH+XrrKj/ocu0XbYVo6xd76II4GzHozBn4wZEKLfTtXDGhtm1W4o
 FdOQXFhXeFlmqR8rXWtBoNIOu9t6NpCtkT7I2KsSnnFEXWxcuWo6JXOsH4vLDjBFhUUy
 PhTBEeO7z2fyJUfKKlvv3kVRTmlco0eDypPxXhWpAn8vaPu5zRSnfYOwfgZbxfYO/Eoz
 NIUQ==
X-Gm-Message-State: AC+VfDygBnjdXOO/OVZsEnyILb7VevLTplzCK3LQmNxaLdLeZi6JKnDS
 DKDhfjUbZViORTI5UP/Dt4j9IyD4t1z0dEFpe0XzfuAMlgyg
X-Google-Smtp-Source: ACHHUZ6GTqQz7P6Nmjb4XGrL87CTGND4iZIg6xiJ/ZIXSaq2AQ3nqYDA+tRwJ9cWxvXExyVRMvye0Eufg8LURqbGhFhqWaRuy280
MIME-Version: 1.0
X-Received: by 2002:a6b:b497:0:b0:760:ec54:6069 with SMTP id
 d145-20020a6bb497000000b00760ec546069mr4374283iof.2.1683441348364; Sat, 06
 May 2023 23:35:48 -0700 (PDT)
Date: Sat, 06 May 2023 23:35:48 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000091d19105fb14bbf5@google.com>
From: syzbot <syzbot+list614a49167c105b5a39b2@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, ericvh@gmail.com, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, lucho@ionkov.net, 
 syzkaller-bugs@googlegroups.com, v9fs-developer@lists.sourceforge.net
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello 9p maintainers/developers,
 This is a 31-day syzbot report
 for the 9p subsystem. All related reports/information can be found at:
 https://syzkaller.appspot.com/upstream/s/9p
 During the period, 0 new issues were detected and 0 were fixed. In total,
 8 issues are still open and 28 have been fixed so far. 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
X-Headers-End: 1pvXzt-00H8E6-Sx
Subject: [V9fs-developer] [syzbot] Monthly 9p report (May 2023)
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
In total, 8 issues are still open and 28 have been fixed so far.

Some of the still happening issues:

Ref Crashes Repro Title
<1> 1021    Yes   INFO: task hung in iterate_supers
                  https://syzkaller.appspot.com/bug?extid=2349f5067b1772c1d8a5
<2> 506     Yes   WARNING in inc_nlink (3)
                  https://syzkaller.appspot.com/bug?extid=2b3af42c0644df1e4da9
<3> 174     Yes   WARNING in v9fs_fid_get_acl
                  https://syzkaller.appspot.com/bug?extid=a83dc51a78f0f4cf20da
<4> 140     Yes   BUG: corrupted list in p9_fd_cancelled (2)
                  https://syzkaller.appspot.com/bug?extid=1d26c4ed77bc6c5ed5e6
<5> 7       No    WARNING: refcount bug in p9_req_put (2)
                  https://syzkaller.appspot.com/bug?extid=3ba8f2097df93bc26d2f

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
