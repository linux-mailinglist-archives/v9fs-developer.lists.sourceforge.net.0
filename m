Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3022A7F84
	for <lists+v9fs-developer@lfdr.de>; Thu,  5 Nov 2020 14:17:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=40YkvBMm79p8gmgqCPfhXcD757J9CtluOeXCuGQmRVI=; b=WaVobg1XqbVoSqgCKiD/xLpmU
	Owoevaj0YFARUjyu7T9OePuyrKGYelhWSF/yKU2+d6XOU3EKcA3nmlxgL0+63hjW1w0G+wYupMqid
	ShHROZ2kO9t/CfOD2FOFRVaXXDp3jS18h47eHG5bQvnqLoWZLW3d7ocd916Jt7gRMPGHc=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kaf8M-00007h-V2; Thu, 05 Nov 2020 13:16:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <qemu_oss@crudebyte.com>) id 1kaf8L-00007Z-Nr
 for v9fs-developer@lists.sourceforge.net; Thu, 05 Nov 2020 13:16:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CeSDKjQThdIABp8s+s/E8JP6zStMA/YM/SdYYX3O/K8=; b=Apqfk+xa/svt3JJLhlVg2zl9Qv
 c0akFQ8UZ6mjGqTi6FuYyY2L7IKzAzcV+VTsGGXW4OrI0zTEY0EFkIhoTg95PTpZ/N/hFukbLG0GP
 3gIIKhIiRg1My9q1ZDK/2s8Sjc8bPWbFiS6O304gVSUx6sfequj/NqrGXEMpbkI54nmI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CeSDKjQThdIABp8s+s/E8JP6zStMA/YM/SdYYX3O/K8=; b=L4chVzpifhyrA5nblY+Ac4heec
 4LmE7ljFMHKkZUkaISMULCQJva9Z6+yMSL+7Mi2Thw0V7dUAovX7vk/3pyFZGQ/JBuVuLXZShpArQ
 TVDECSPnzuH37sRjtE7+mayvWiM7trPIJz/fKkpj4gxC85HkXorOot/yb1QtBK5gmmJ8=;
Received: from lizzy.crudebyte.com ([91.194.90.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kaf8C-00AQR9-GM
 for v9fs-developer@lists.sourceforge.net; Thu, 05 Nov 2020 13:16:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=lizzy; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=CeSDKjQThdIABp8s+s/E8JP6zStMA/YM/SdYYX3O/K8=; b=lMGWqo4HYT2Vjxdcyu8lRLeUrb
 HEEwVhDEGTlVF+0T4L9udgmm6dSckgzk7oT6ix/TVRJUvumz3RUjt+sf7mLc3ykbhepjXRBo2Jb9d
 y6/Ggj3leVe40XwlqfqJcYbz3XZ+ePY5EgWWYJ26IOos+xUYeBV44l1VYtIA7t1SbYJtSG4Ha+eI3
 +wZsb4dzufLWJa41huRe95It2N3A9X8sQUyh9EPMasD/wx6rlRTHqP8eFZ0ZRPfjqVry3XSy8vuWl
 CrhX7v1QsQ9+nVcL2MVYs0lYDxDgh46yMd5fDue5uZs2TcEZz3udstQKzvzN/O4OG692QZQ+g9I8Q
 AgY3gaQQ==;
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Thu, 05 Nov 2020 13:32:34 +0100
Message-ID: <2540304.0IflC6tfRZ@silver>
In-Reply-To: <20201104115708.GA30104@nautica>
References: <20200923141146.90046-1-jianyong.wu@arm.com>
 <1755303.6a88tIVZ8j@silver> <20201104115708.GA30104@nautica>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kaf8C-00AQR9-GM
Subject: Re: [V9fs-developer] [PATCH RFC v2 4/4] 9p: fix race issue in fid
 contention.
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <qemu_oss@crudebyte.com>
Cc: lucho@ionkov.net, justin.he@arm.com, ericvh@gmail.com,
 Jianyong Wu <jianyong.wu@arm.com>, groug@kaod.org,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mittwoch, 4. November 2020 12:57:08 CET Dominique Martinet wrote:
> Christian Schoenebeck wrote on Wed, Nov 04, 2020:
> > > Greg, Christian - from what I understood (in private, hopefully I'm
> > > allowed to repeat!), he won't be able to contribute to qemu because of
> > > company policies and I'm unlikely to take the time either right now.
> > > I don't think it's a problem to continue as is though, we can land linux
> > > kernel support (it's still useful for non-qemu servers) and if someone
> > > is interested later on they'll just need to finish that bit.
> > 
> > Hmm, no idea what kind of policy that is; there is no GPL3 in qemu at
> > least
> > that some companies are concerned about, but OK not my business.
> > 
> > I actually thought this would still take a while on kernel side,
> 
> To be honest, so did I -- the original patches are so old I had more or
> less given up on it :P
> 
> But I don't see any more problem now and we'll want to get there
> eventually so now's a good time as any... I just want to get fault
> injection to work to test various refcounting cornercases but shouldn't
> be much longer.

Exactly! The situation would presumably not change at any other time in 
future. Maybe there will be issues, we'll see, but I think it's worth it, as a 
large bunch of software depends on use-after-unlink behaviour.

> 
> > so in the
> > meantime we layed the ground in qemu for resolving this issue independent
> > of clients and independent of any guest OS installation by introducing
> > test cases using the 9pfs 'local' filesystem driver:
> > 
> > https://github.com/qemu/qemu/blob/master/tests/qtest/virtio-9p-test.c
> > 
> > So the idea was to resolve that chicken egg problem of this issue that way
> > and also handle it a bit more systematically. If you now run qemu's 9p
> > tests with latest git version (or at least with yesterday's QEMU 5.2 rc1
> > tarball):
> > 
> > cd qemu/build
> > make
> > export QTEST_QEMU_BINARY=x86_64-softmmu/qemu-system-x86_64
> > tests/qtest/qos-test
> > 
> > these tests will now create a test directory qtest-9p-local-XXXXXX under
> > the current directory (i.e. the build directory) where they are creating
> > real directories and files like on a production system would do, just
> > without a guest OS.
> > 
> > As you can see, there are already 9p tests for creating and deleting
> > directories, files, symlinks and hard links, etc.
> > 
> > Maybe somebody interested to see this issue resolved in qemu might help by
> > rebasing Greg's old patches and testing it with some test cases this way.
> > Personally I need to work on some other things in the next couple weeks,
> > but if somebody needs help, questions, review, etc., I'll be there.
> 
> Great news, nice work there.
> I see the new tests it doesn't look hard to add new ones reproducing
> open-unlink-fstat for example; I think it's good to have regardless of
> kernel progress.
> 
> We'll get there!

Yes, that was the goal, trying to keep it simple so that people not 
necessarily being deeply familiar with 9P (or QEMU) can still quickly write 
tests for their issues.

This provides several benefits: we can now clearly isolate issues, because in 
the past we often received patches where it was not immediately clear what's 
that this patch is fixing exacly, is it a qemu problem, is it rather the 
client that should handle this, or is this even some spanning side effect of 
several layers involved like e.g. when overlayfs is deployed.

And another major benefit is that it simply makes development much more 
efficient. Because you can now just change something on qemu side, and simply 
run

make && tests/qtest/qos-test

to see within few seconds whether it really does what you wanted it to do. And 
on doubt you just look into that subdirectory qtest-9p-local-XXXXXX to see 
what happened.

You can also automatically test your changes with multiple qemu configurations 
(e.g. different security modes, mappings, etc.) as each test case can supply 
its own set of qemu CL options, and the tests can also be run for all enabled 
architectures.

The command "tests/qtest/qos-test" is just a shortcut for 9P tests of course. 
Because obviously there is a huge amount of test cases in qemu for all its 
subsystems. But I will document this and other things more clearly soon to 
lower the entry barrier for new people getting in touch with the qemu 9p code 
base.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
