Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A93775C952
	for <lists+v9fs-developer@lfdr.de>; Tue,  2 Jul 2019 08:29:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hiCIE-0006Bd-Ke; Tue, 02 Jul 2019 06:29:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <ebiggers@kernel.org>) id 1hiCID-0006BW-6o
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Jul 2019 06:29:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dgiWf+6PMtVdQo4UHozPZe5jqW3i61Z+ZeVxe0w7wds=; b=m9pUQa6J537ajmuKGNd5gNkXos
 OdEA5fjm7xAW5X77eiZfJxoLKjT1BX0VrsTOIVdGeEuOP1tPTd4h3FGkcVU0STFx51BWVJguTpOGc
 8pkIVsMbLd0YK1Coa0MDxhFdZZBzn9OIKkZue7szWTJ8J73fRVTbaVhVU76vE/Bh1+0w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=dgiWf+6PMtVdQo4UHozPZe5jqW3i61Z+ZeVxe0w7wds=; b=T
 EN6n0ZsIqlTC0czjD5oeE44T4wfc62V7WNdxHbK/q74Bu76lzkYUoHj6i4OYSdiVKQFEze3zBbmTL
 sXpwGXPT3MK05c5QKvQ2gud3na6VWSw4MTafGUPgeKpfajed2HZVWtK0O+bkbNaegXeIkxaMR4p9d
 94ePht2oIY43CBYk=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hiCIQ-003naV-O6
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Jul 2019 06:29:44 +0000
Received: from sol.localdomain (c-24-5-143-220.hsd1.ca.comcast.net
 [24.5.143.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D3DB420881;
 Tue,  2 Jul 2019 06:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562048977;
 bh=tEg5JbpCIvxL/BbOOdwx/RCALah6LY+Lc3vVT4bkrwA=;
 h=Date:From:To:Cc:Subject:From;
 b=CABcW9ohfNcAoJmMXlts+Et6/dUsmGXKw43qeKPX0BCR3/fXmxzBrcmQwbfgyowPJ
 4zIYDb+dyu3jeO1Rl4TlqmJMSrDadGz2VF0HhbsXPs/yMKfany8+LJzkO9My2m+AFj
 U5sDo9o6bO86boePg1t54C4EZFer7Q7P4g+NmSuQ=
Date: Mon, 1 Jul 2019 23:29:35 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20190702062935.GD3054@sol.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hiCIQ-003naV-O6
Subject: [V9fs-developer] Reminder: 18 open syzbot bugs in "fs/9p" subsystem
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

[This email was generated by a script.  Let me know if you have any suggestions
to make it better, or if you want it re-generated with the latest status.]

Of the currently open syzbot reports against the upstream kernel, I've manually
marked 18 of them as possibly being bugs in the "fs/9p" subsystem.  I've listed
these reports below, sorted by an algorithm that tries to list first the reports
most likely to be still valid, important, and actionable.

Of these 18 bugs, 3 were seen in mainline in the last week.

If you believe a bug is no longer valid, please close the syzbot report by
sending a '#syz fix', '#syz dup', or '#syz invalid' command in reply to the
original thread, as explained at https://goo.gl/tpsmEJ#status

If you believe I misattributed a bug to the "fs/9p" subsystem, please let me
know, and if possible forward the report to the correct people or mailing list.

Here are the bugs:

--------------------------------------------------------------------------------
Title:              KASAN: use-after-free Read in __queue_work (2)
Last occurred:      4 days ago
Reported:           358 days ago
Branches:           Mainline and others
Dashboard link:     https://syzkaller.appspot.com/bug?id=c14270323f22e896228f470164aac59114d388be
Original thread:    https://lkml.kernel.org/lkml/000000000000f665a30570885589@google.com/T/#u

This bug has a C reproducer.

No one replied to the original thread for this bug.

If you fix this bug, please add the following tag to the commit:
    Reported-by: syzbot+1c9db6a163a4000d0765@syzkaller.appspotmail.com

If you send any email or patch for this bug, please consider replying to the
original thread.  For the git send-email command to use, or tips on how to reply
if the thread isn't in your mailbox, see the "Reply instructions" at
https://lkml.kernel.org/r/000000000000f665a30570885589@google.com

--------------------------------------------------------------------------------
Title:              WARNING: refcount bug in p9_req_put
Last occurred:      0 days ago
Reported:           228 days ago
Branches:           Mainline and others
Dashboard link:     https://syzkaller.appspot.com/bug?id=af5bada8b8d40472d6cd6a34a9cc1dc4b46d03df
Original thread:    https://lkml.kernel.org/lkml/000000000000eb6a8e057ab79f82@google.com/T/#u

This bug has a syzkaller reproducer only.

The original thread for this bug received 1 reply, 226 days ago.

If you fix this bug, please add the following tag to the commit:
    Reported-by: syzbot+edec7868af5997928fe9@syzkaller.appspotmail.com

If you send any email or patch for this bug, please consider replying to the
original thread.  For the git send-email command to use, or tips on how to reply
if the thread isn't in your mailbox, see the "Reply instructions" at
https://lkml.kernel.org/r/000000000000eb6a8e057ab79f82@google.com

--------------------------------------------------------------------------------
Title:              memory leak in v9fs_cache_session_get_cookie
Last occurred:      0 days ago
Reported:           41 days ago
Branches:           Mainline
Dashboard link:     https://syzkaller.appspot.com/bug?id=f012bdf297a7a4c860c38a88b44fbee43fd9bbf3
Original thread:    https://lkml.kernel.org/lkml/0000000000001b266f058965f9a7@google.com/T/#u

This bug has a C reproducer.

No one has replied to the original thread for this bug yet.

If you fix this bug, please add the following tag to the commit:
    Reported-by: syzbot+3a030a73b6c1e9833815@syzkaller.appspotmail.com

If you send any email or patch for this bug, please consider replying to the
original thread.  For the git send-email command to use, or tips on how to reply
if the thread isn't in your mailbox, see the "Reply instructions" at
https://lkml.kernel.org/r/0000000000001b266f058965f9a7@google.com

--------------------------------------------------------------------------------
Title:              KASAN: use-after-free Read in p9_fd_poll
Last occurred:      323 days ago
Reported:           355 days ago
Branches:           Mainline and others
Dashboard link:     https://syzkaller.appspot.com/bug?id=1b726e0a253ee75e902d090f68705da3d42d6ae0
Original thread:    https://lkml.kernel.org/lkml/000000000000afbebb0570be9bf3@google.com/T/#u

This bug has a C reproducer.

No one replied to the original thread for this bug.

If you fix this bug, please add the following tag to the commit:
    Reported-by: syzbot+0442e6e2f7e1e33b1037@syzkaller.appspotmail.com

If you send any email or patch for this bug, please consider replying to the
original thread.  For the git send-email command to use, or tips on how to reply
if the thread isn't in your mailbox, see the "Reply instructions" at
https://lkml.kernel.org/r/000000000000afbebb0570be9bf3@google.com

--------------------------------------------------------------------------------
Title:              KMSAN: uninit-value in unix_find_other
Last occurred:      356 days ago
Reported:           358 days ago
Branches:           Mainline (with KMSAN patches)
Dashboard link:     https://syzkaller.appspot.com/bug?id=a18dffaab644e1a6f8c7e85ff0e18b6293ba8af6
Original thread:    https://lkml.kernel.org/lkml/0000000000004a927105708ab2d9@google.com/T/#u

This bug has a C reproducer.

The original thread for this bug received 1 reply, 357 days ago.

If you fix this bug, please add the following tag to the commit:
    Reported-by: syzbot+75d51fe5bf4ebe988518@syzkaller.appspotmail.com

If you send any email or patch for this bug, please consider replying to the
original thread.  For the git send-email command to use, or tips on how to reply
if the thread isn't in your mailbox, see the "Reply instructions" at
https://lkml.kernel.org/r/0000000000004a927105708ab2d9@google.com

--------------------------------------------------------------------------------
Title:              KMSAN: uninit-value in p9_client_rpc
Last occurred:      354 days ago
Reported:           356 days ago
Branches:           Mainline (with KMSAN patches)
Dashboard link:     https://syzkaller.appspot.com/bug?id=a90ca45133088ce07550f7cee0be028ee079c3f4
Original thread:    https://lkml.kernel.org/lkml/000000000000c541110570a978a4@google.com/T/#u

This bug has a C reproducer.

The original thread for this bug received 1 reply, 354 days ago.

If you fix this bug, please add the following tag to the commit:
    Reported-by: syzbot+4de40388f584432bf004@syzkaller.appspotmail.com

If you send any email or patch for this bug, please consider replying to the
original thread.  For the git send-email command to use, or tips on how to reply
if the thread isn't in your mailbox, see the "Reply instructions" at
https://lkml.kernel.org/r/000000000000c541110570a978a4@google.com

--------------------------------------------------------------------------------
Title:              general protection fault in p9_conn_cancel
Last occurred:      337 days ago
Reported:           355 days ago
Branches:           Mainline
Dashboard link:     https://syzkaller.appspot.com/bug?id=914af3becc310b7a00c1107f0c97bc6a1834e81d
Original thread:    https://lkml.kernel.org/lkml/000000000000ee4dab0570be896c@google.com/T/#u

This bug has a C reproducer.

No one replied to the original thread for this bug.

If you fix this bug, please add the following tag to the commit:
    Reported-by: syzbot+4d29d76a0da7a8c4d86c@syzkaller.appspotmail.com

If you send any email or patch for this bug, please consider replying to the
original thread.  For the git send-email command to use, or tips on how to reply
if the thread isn't in your mailbox, see the "Reply instructions" at
https://lkml.kernel.org/r/000000000000ee4dab0570be896c@google.com

--------------------------------------------------------------------------------
Title:              KASAN: use-after-free Read in ep_scan_ready_list
Last occurred:      320 days ago
Reported:           355 days ago
Branches:           Mainline and others
Dashboard link:     https://syzkaller.appspot.com/bug?id=f668a9aa79ed08cc1f386be0930a529f285a4ec8
Original thread:    https://lkml.kernel.org/lkml/0000000000005e2bf90570bbe2ab@google.com/T/#u

This bug has a C reproducer.

No one replied to the original thread for this bug.

If you fix this bug, please add the following tag to the commit:
    Reported-by: syzbot+78b902c73c69102cb767@syzkaller.appspotmail.com

If you send any email or patch for this bug, please consider replying to the
original thread.  For the git send-email command to use, or tips on how to reply
if the thread isn't in your mailbox, see the "Reply instructions" at
https://lkml.kernel.org/r/0000000000005e2bf90570bbe2ab@google.com

--------------------------------------------------------------------------------
Title:              KASAN: use-after-free Read in p9_conn_cancel
Last occurred:      319 days ago
Reported:           358 days ago
Branches:           Mainline and others
Dashboard link:     https://syzkaller.appspot.com/bug?id=cc9f4ab3d1198237b0ee1f751ca02e21f8d46445
Original thread:    https://lkml.kernel.org/lkml/000000000000d13b2e05708a9ca0@google.com/T/#u

This bug has a C reproducer.

No one replied to the original thread for this bug.

If you fix this bug, please add the following tag to the commit:
    Reported-by: syzbot+f0fdc967350bd580a80b@syzkaller.appspotmail.com

If you send any email or patch for this bug, please consider replying to the
original thread.  For the git send-email command to use, or tips on how to reply
if the thread isn't in your mailbox, see the "Reply instructions" at
https://lkml.kernel.org/r/000000000000d13b2e05708a9ca0@google.com

--------------------------------------------------------------------------------
Title:              INFO: task hung in iterate_supers
Last occurred:      63 days ago
Reported:           356 days ago
Branches:           Mainline and others
Dashboard link:     https://syzkaller.appspot.com/bug?id=3c0c173ff55822aacb81ce7ae27a6676fba29a5c
Original thread:    https://lkml.kernel.org/lkml/000000000000da8a9b0570a29c01@google.com/T/#u

This bug has a C reproducer.

The original thread for this bug received 4 replies; the last was 353 days ago.

If you fix this bug, please add the following tag to the commit:
    Reported-by: syzbot+2349f5067b1772c1d8a5@syzkaller.appspotmail.com

If you send any email or patch for this bug, please consider replying to the
original thread.  For the git send-email command to use, or tips on how to reply
if the thread isn't in your mailbox, see the "Reply instructions" at
https://lkml.kernel.org/r/000000000000da8a9b0570a29c01@google.com

--------------------------------------------------------------------------------
Title:              INFO: task hung in flush_work
Last occurred:      60 days ago
Reported:           420 days ago
Branches:           Mainline and others
Dashboard link:     https://syzkaller.appspot.com/bug?id=70f8f16aafb20820a026882ea1ab613b4bfa2216
Original thread:    https://lkml.kernel.org/lkml/000000000000b15fb3056b9f94e7@google.com/T/#u

This bug has a C reproducer.

No one replied to the original thread for this bug.

If you fix this bug, please add the following tag to the commit:
    Reported-by: syzbot+2e7b6af5956e05e5cff7@syzkaller.appspotmail.com

If you send any email or patch for this bug, please consider replying to the
original thread.  For the git send-email command to use, or tips on how to reply
if the thread isn't in your mailbox, see the "Reply instructions" at
https://lkml.kernel.org/r/000000000000b15fb3056b9f94e7@google.com

--------------------------------------------------------------------------------
Title:              BUG: corrupted list in p9_write_work
Last occurred:      280 days ago
Reported:           325 days ago
Branches:           Mainline and others
Dashboard link:     https://syzkaller.appspot.com/bug?id=151aa3d92ac4b94c54797bd48465387068b1fddd
Original thread:    https://lkml.kernel.org/lkml/0000000000002a2fdf0573107004@google.com/T/#u

This bug has a C reproducer.

No one replied to the original thread for this bug.

If you fix this bug, please add the following tag to the commit:
    Reported-by: syzbot+1788bd5d4e051da6ec08@syzkaller.appspotmail.com

If you send any email or patch for this bug, please consider replying to the
original thread.  For the git send-email command to use, or tips on how to reply
if the thread isn't in your mailbox, see the "Reply instructions" at
https://lkml.kernel.org/r/0000000000002a2fdf0573107004@google.com

--------------------------------------------------------------------------------
Title:              BUG: corrupted list in p9_conn_cancel
Last occurred:      257 days ago
Reported:           357 days ago
Branches:           Mainline and others
Dashboard link:     https://syzkaller.appspot.com/bug?id=ed87cd63ebd6e82af690c83e59a3790276572fd1
Original thread:    https://lkml.kernel.org/lkml/00000000000054395605708fbd13@google.com/T/#u

This bug has a C reproducer.

No one replied to the original thread for this bug.

If you fix this bug, please add the following tag to the commit:
    Reported-by: syzbot+ad0832746849421bba05@syzkaller.appspotmail.com

If you send any email or patch for this bug, please consider replying to the
original thread.  For the git send-email command to use, or tips on how to reply
if the thread isn't in your mailbox, see the "Reply instructions" at
https://lkml.kernel.org/r/00000000000054395605708fbd13@google.com

--------------------------------------------------------------------------------
Title:              BUG: corrupted list in p9_read_work (2)
Last occurred:      82 days ago
Reported:           220 days ago
Branches:           Mainline and others
Dashboard link:     https://syzkaller.appspot.com/bug?id=5df4f85d764ee89863d0294b4e0c87ef2fd2c624
Original thread:    https://lkml.kernel.org/lkml/000000000000807fe4057b4f19c6@google.com/T/#u

This bug has a syzkaller reproducer only.

No one replied to the original thread for this bug.

If you fix this bug, please add the following tag to the commit:
    Reported-by: syzbot+77a25acfa0382e06ab23@syzkaller.appspotmail.com

If you send any email or patch for this bug, please consider replying to the
original thread.  For the git send-email command to use, or tips on how to reply
if the thread isn't in your mailbox, see the "Reply instructions" at
https://lkml.kernel.org/r/000000000000807fe4057b4f19c6@google.com

--------------------------------------------------------------------------------
Title:              WARNING: ODEBUG bug in p9_fd_close
Last occurred:      318 days ago
Reported:           358 days ago
Branches:           Mainline and others
Dashboard link:     https://syzkaller.appspot.com/bug?id=751ed5b74aa9a00ac4b39c32881fd32d6f6b875c
Original thread:    https://lkml.kernel.org/lkml/00000000000024f01405708aab83@google.com/T/#u

This bug has a C reproducer.

No one replied to the original thread for this bug.

If you fix this bug, please add the following tag to the commit:
    Reported-by: syzbot+d702a81aadeedd565723@syzkaller.appspotmail.com

If you send any email or patch for this bug, please consider replying to the
original thread.  For the git send-email command to use, or tips on how to reply
if the thread isn't in your mailbox, see the "Reply instructions" at
https://lkml.kernel.org/r/00000000000024f01405708aab83@google.com

--------------------------------------------------------------------------------
Title:              KASAN: use-after-free Read in generic_perform_write
Last occurred:      335 days ago
Reported:           347 days ago
Branches:           linux-next
Dashboard link:     https://syzkaller.appspot.com/bug?id=ffccb5b7eaae1bd46ec0bd18aa9923cee7cfdb60
Original thread:    https://lkml.kernel.org/lkml/00000000000047116205715df655@google.com/T/#u

This bug has a C reproducer.

The original thread for this bug received 3 replies; the last was 346 days ago.

If you fix this bug, please add the following tag to the commit:
    Reported-by: syzbot+b173e77096a8ba815511@syzkaller.appspotmail.com

If you send any email or patch for this bug, please consider replying to the
original thread.  For the git send-email command to use, or tips on how to reply
if the thread isn't in your mailbox, see the "Reply instructions" at
https://lkml.kernel.org/r/00000000000047116205715df655@google.com

--------------------------------------------------------------------------------
Title:              general protection fault in do_raw_spin_unlock
Last occurred:      350 days ago
Reported:           350 days ago
Branches:           linux-next
Dashboard link:     https://syzkaller.appspot.com/bug?id=ed176b6fd7180236cd56d904bd6dcabd6e2f318b
Original thread:    https://lkml.kernel.org/lkml/000000000000fedc1105711f11fd@google.com/T/#u

This bug has a syzkaller reproducer only.

No one replied to the original thread for this bug.

If you fix this bug, please add the following tag to the commit:
    Reported-by: syzbot+83a25334ef203851dc81@syzkaller.appspotmail.com

If you send any email or patch for this bug, please consider replying to the
original thread.  For the git send-email command to use, or tips on how to reply
if the thread isn't in your mailbox, see the "Reply instructions" at
https://lkml.kernel.org/r/000000000000fedc1105711f11fd@google.com

--------------------------------------------------------------------------------
Title:              general protection fault in p9_client_prepare_req
Last occurred:      278 days ago
Reported:           347 days ago
Branches:           linux-next
Dashboard link:     https://syzkaller.appspot.com/bug?id=993a3caa9e6efc13b53cd9531eeb9dc50d59a4e4
Original thread:    https://lkml.kernel.org/lkml/0000000000007870ef0571590bb2@google.com/T/#u

This bug has a C reproducer.

No one replied to the original thread for this bug.

If you fix this bug, please add the following tag to the commit:
    Reported-by: syzbot+77a28a63a0ece0fbba97@syzkaller.appspotmail.com

If you send any email or patch for this bug, please consider replying to the
original thread.  For the git send-email command to use, or tips on how to reply
if the thread isn't in your mailbox, see the "Reply instructions" at
https://lkml.kernel.org/r/0000000000007870ef0571590bb2@google.com



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
