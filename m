Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C70149DD23
	for <lists+v9fs-developer@lfdr.de>; Thu, 27 Jan 2022 10:00:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nD0dw-0004KF-VX; Thu, 27 Jan 2022 09:00:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <groug@kaod.org>) id 1nD0dv-0004Jl-1w
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Jan 2022 09:00:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j3++swwRMNl7VGyyFZ5PUvnskQ99JJcV/KDNW5erpsc=; b=J2zJwjzUFOhmtpo46kcjK8a8U4
 1MJjYoIKFoOG0Op04kr5/VmKfI43abpkJkQZDbcxR7IwVnYWgBsPwcepKUz3rz6bvFIak2l7V1u/1
 Z6jI6o8CfoV6u0OUFuIZffkWMKlCkvHC0kDDmbymKYyvEM/ImmiR27OvfwKleexxB7T8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=j3++swwRMNl7VGyyFZ5PUvnskQ99JJcV/KDNW5erpsc=; b=dH3B+TpzHHUuUoHG7MV9qycyfT
 PSxR7TWsVfFmBmslTsPpD7gOsbkkVQLckZJUXJvSq9P1YUy07NFkcLIJT/8yr1uq4J8VJrgUvZgww
 xmCf2p8XfYAi8TdddTovjT7smCU068Ywgke/tYfIbcxndQbQs3vmyk3LiIpmHKNmrkpA=;
Received: from us-smtp-delivery-44.mimecast.com ([205.139.111.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nD0do-00Fwjs-Ej
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Jan 2022 09:00:32 +0000
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-57-WdNjzfmXOJONpwiZIRQFgA-1; Thu, 27 Jan 2022 03:44:33 -0500
X-MC-Unique: WdNjzfmXOJONpwiZIRQFgA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8868951081;
 Thu, 27 Jan 2022 08:44:31 +0000 (UTC)
Received: from bahia (unknown [10.39.192.166])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4A8E37AB56;
 Thu, 27 Jan 2022 08:44:30 +0000 (UTC)
Date: Thu, 27 Jan 2022 09:44:29 +0100
From: Greg Kurz <groug@kaod.org>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20220127094429.21173d00@bahia>
In-Reply-To: <YfIP9GQohscGomgX@codewreck.org>
References: <CAP6exYJF9iGoJrMZ=gz2ghanzfi9CqKi=TCnzD5U4SmZQW0kyQ@mail.gmail.com>
 <YfIP9GQohscGomgX@codewreck.org>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=groug@kaod.org
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: kaod.org
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu,
 27 Jan 2022 12:22:28 +0900 Dominique Martinet <asmadeus@codewreck.org>
 wrote: > Hi, > > ron minnich wrote on Wed, Jan 26, 2022 at 07:01:37PM -0800:
 > > I've discovered that all kernels past the commit referenced above > >
 break the following simple program: > > int fd3 = open(a [...] 
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.139.111.44 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1nD0do-00Fwjs-Ej
Subject: Re: [V9fs-developer] 9p was broken by
 478ba09edc1f2f2ee27180a06150cb2d1a686f9c
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, ron minnich <rminnich@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 V9FS Developers <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, 27 Jan 2022 12:22:28 +0900
Dominique Martinet <asmadeus@codewreck.org> wrote:

> Hi,
> 
> ron minnich wrote on Wed, Jan 26, 2022 at 07:01:37PM -0800:
> > I've discovered that all kernels past the commit referenced above
> > break the following simple program:
> > int fd3 = open(argv[1], O_RDONLY , 0);
> > if (fd3 < 0) perror("non cloexec open ");
> > int fd4 = open(argv[1], O_RDONLY , 0);
> > if (fd4 < 0) perror("2nd non cloexec open ");
> > int fd = open(argv[1], O_RDONLY | O_CLOEXEC, 0);
> > if (fd < 0) perror("first open");
> > int fd2 = open(argv[1], O_RDONLY | O_CLOEXEC, 0);
> > if (fd2 < 0) perror("second open");
> > printf("%d %d %d %d\n", fd3, fd4, fd, fd2);
> > 
> > The output:
> > 2nd non cloexec open : Device or resource busy
> > first open: Device or resource busy
> > second open: Device or resource busy
> > 3 -1 -1 -1
> 
> ugh.
> 
> > As a result, programs can not open a file that's already open. This breaks an
> > absolutely incredible number of things, as you might expect.
> 
> Yes, I'm surprised none of my tests exercise that...
> *tests*
> Ah, it depends on the server.
> Ok, this is probably the same as this:
> https://marc.info/?l=v9fs-developer&m=164182707911101&w=2
> 
> > This causes real trouble for us at Google, as we are using the cpu
> > command from u-root: github.com/u-root/cpu, and 9pfs is load-bearing.
> > 
> > Any thoughts on what we might be able to do to get things back?
> 
> Yes, we "just" need to not mix fids obtained from open/create with other
> fids.
> In the other thread I had suggested just adding a flag to the search
> function to separate the fids, my first idea was just to not index the
> opened/created fids but we need them around in some cases. It's really
> unfortunate that no-one who worked on this patch series were aware of
> this part of the specification, the check in the go9p server looks quite
> artificial to me... But anyway I'm just rambling, we need to fix this.
> 

So the patch is violating this part of the spec, that QEMU doesn't
enforce BTW, right ?

 From the walk(9p) man page:

           The fid must be valid in the current session and must not
           have been opened for I/O by an open or create message.  If

Paths that eventually feed the fid returned by v9fs_fid_find() to
p9_client_walk() should never get an already open fid then. It seems
that your suggestion of adding a flag to v9fs_fid_find() to handle that
is the way to go. Of course, this will require careful auditing of the
many paths that are involved... Sorry for missing that at the time :-\

> 
> For now if reverting that patch works for you it might be the
> simplest way forward.
> It's also possible to make the server more tolerant as a workaround:
> https://marc.info/?l=v9fs-developer&m=164189977224789&w=2
> 
> 
> I'll try to find some time this weekend to send a proper fix, as it
> looks like it's impacting more people than I thought.
> 

Thanks Dominique, I clearly don't have the cycles to fix that but
I'll try to help in reviewing/testing.

Cheers,

--
Greg

> 
> Thanks,



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
