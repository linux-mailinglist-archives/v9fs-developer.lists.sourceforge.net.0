Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BAA631C54A
	for <lists+v9fs-developer@lfdr.de>; Tue, 16 Feb 2021 03:12:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lBpqi-0004H2-1G; Tue, 16 Feb 2021 02:12:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1lBpqh-0004Gv-3z
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 02:12:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s6M77qqPUyP6vrb0lQFb/awPS8W4Khs2jpQ6ixqkTJU=; b=Dhd+UUflzmiOhm572RyjaKIZmT
 bdXMw14zabUVmOWS/wzIedQakZ6+RboV6wOHXgtW0wc6S+k0wMErojaVSPqSWZZMPf46C0mu9OBky
 CtXiIKnJVxRo4df7AZlYQleDyTjH98YJXijU9tSBPgApSFNKxMiaMxonGlgGHlTfewv8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=s6M77qqPUyP6vrb0lQFb/awPS8W4Khs2jpQ6ixqkTJU=; b=VBMmIYGnA+jQJHItUsJf8PFkNv
 eWDDuRFUXERa4agj8SJQIIDk24wF+DLC7HMwkVu0EyN+SqhGQwI63MjC1MjlB1RoQjeI/S1tl0V5Q
 +6yYy/UV4Icr6R5amUpjmEcHsmm8UUK67B42wq8EsP60jVjNgeSSffIp+IbmVheR6u9U=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lBpqN-00ANUI-Vc
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 02:12:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=s6M77qqPUyP6vrb0lQFb/awPS8W4Khs2jpQ6ixqkTJU=; b=u1urISE6rLh5rcNq2O6tANgHCo
 Gu04LHkFcKO2Z4OIXabD32OeS/AgjxvHE6dvNfhMsXBDDjHOoJZwAIamvqRKXi1Pitg4dZIJz06Lt
 83KURXnWXanrmcals7PoXVLIQoZR64IcKD67/HRLxouSjXNGDiOWGrcRbcXQDcrGlKoDlORQOKa5e
 htETGkCxXa104EyamUhm6yw9mYpOd+rjK42OnOJr77DFHwJaMrNnp6k0bKPaWoN3lK2jpiogsmZm5
 ImbmqPEOd56K3jktMNKIvRh5O0Mmv8keAlevLfepeixppXXeXWpQQ0SyZjfnV2NdIGfPKLQdVLFUZ
 lZUay/Zw==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lBpod-00GL6i-EP; Tue, 16 Feb 2021 02:10:18 +0000
Date: Tue, 16 Feb 2021 02:10:15 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Steve French <smfrench@gmail.com>
Message-ID: <20210216021015.GH2858050@casper.infradead.org>
References: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
 <9e49f96cd80eaf9c8ed267a7fbbcb4c6467ee790.camel@redhat.com>
 <CAH2r5mvPLivjuE=cbijzGSHOvx-hkWSWbcxpoBnJX-BR9pBskQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAH2r5mvPLivjuE=cbijzGSHOvx-hkWSWbcxpoBnJX-BR9pBskQ@mail.gmail.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lBpqN-00ANUI-Vc
Subject: Re: [V9fs-developer] [PATCH 00/33] Network fs helper library &
 fscache kiocb API [ver #3]
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
Cc: David Wysochanski <dwysocha@redhat.com>, Steve French <sfrench@samba.org>,
 linux-nfs <linux-nfs@vger.kernel.org>,
 William Kucharski <william.kucharski@oracle.com>,
 Jeff Layton <jlayton@redhat.com>, CIFS <linux-cifs@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-afs@lists.infradead.org,
 David Howells <dhowells@redhat.com>, linux-mm <linux-mm@kvack.org>,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Feb 15, 2021 at 06:40:27PM -0600, Steve French wrote:
> It could be good if netfs simplifies the problem experienced by
> network filesystems on Linux with readahead on large sequential reads
> - where we don't get as much parallelism due to only having one
> readahead request at a time (thus in many cases there is 'dead time'
> on either the network or the file server while waiting for the next
> readpages request to be issued).   This can be a significant
> performance problem for current readpages when network latency is long
> (or e.g. in cases when network encryption is enabled, and hardware
> offload not available so time consuming on the server or client to
> encrypt the packet).
> 
> Do you see netfs much faster than currentreadpages for ceph?
> 
> Have you been able to get much benefit from throttling readahead with
> ceph from the current netfs approach for clamping i/o?

The switch from readpages to readahead does help in a couple of corner
cases.  For example, if you have two processes reading the same file at
the same time, one will now block on the other (due to the page lock)
rather than submitting a mess of overlapping and partial reads.

We're not there yet on having multiple outstanding reads.  Bill and I
had a chat recently about how to make the readahead code detect that
it is in a "long fat pipe" situation (as opposed to just dealing with
a slow device), and submit extra readahead requests to make best use of
the bandwidth and minimise blocking of the application.

That's not something for the netfs code to do though; we can get into
that situation with highly parallel SSDs.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
