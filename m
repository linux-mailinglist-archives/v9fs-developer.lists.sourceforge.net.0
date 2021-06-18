Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7A83ACB67
	for <lists+v9fs-developer@lfdr.de>; Fri, 18 Jun 2021 14:53:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1luE07-00051C-5G; Fri, 18 Jun 2021 12:53:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <vgoyal@redhat.com>) id 1luE06-000510-6g
 for v9fs-developer@lists.sourceforge.net; Fri, 18 Jun 2021 12:53:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O7yYJwP0hLqEgWbtE3UdqtU4/CGBcO2PNzuDJpFqL/M=; b=RLfdiwsQ7VWhN7gIKP3C4wpORv
 cL8X/M3fRA3PUhNdAL6wkDM4i1XfxL80RXz0Wz9ffJ4VS8/KWCX/EjVnfvpaJaWNzbiw2ykcCPZVx
 B3KVBCsStU5PuwLY7Q5hw8HdBcaSrdu38ziuwHMu3qto+aEwrXrg2USkh/V766pHHy1I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=O7yYJwP0hLqEgWbtE3UdqtU4/CGBcO2PNzuDJpFqL/M=; b=ZMmFoQ4ieDvp1Mtrh3QF1Mg9MX
 xhyh/aPQhghCTeHpv2wctsWz4qsFWNX/9PbuPkr2ZeDai0TYLMo7rPF8YCbMYridqhG4JvZuePLti
 QNlKAdzXHGc1kBnwoGicwT40cX78naCxt2WkPwEgNpeGQfoeDL+TcNGkih+w+h55w1Ss=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1luDzu-0002EK-Va
 for v9fs-developer@lists.sourceforge.net; Fri, 18 Jun 2021 12:53:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1624020798;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=O7yYJwP0hLqEgWbtE3UdqtU4/CGBcO2PNzuDJpFqL/M=;
 b=QPj8TCGz5j/mTuxVjPdsSaAfMuOiSzpwdUkGxet16UsM3OYegdK5ZNGkAOpbTn0IsjKGQ8
 AVGWWuRJJ1DA7pyW8BYT11L9eC8bkwYjBfnWxK8yM3zcngK191CLJINKjsZH0cr1CdemCb
 3Pb7/Mms+RUfLQjPmzSvlXQL99La+Rk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-329-ZLKhS9mkOo-68xNIRpssBA-1; Fri, 18 Jun 2021 08:53:16 -0400
X-MC-Unique: ZLKhS9mkOo-68xNIRpssBA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5327B100C611;
 Fri, 18 Jun 2021 12:53:15 +0000 (UTC)
Received: from horse.redhat.com (ovpn-114-2.rdu2.redhat.com [10.10.114.2])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CD50B60FC2;
 Fri, 18 Jun 2021 12:53:08 +0000 (UTC)
Received: by horse.redhat.com (Postfix, from userid 10451)
 id 65EBC22054F; Fri, 18 Jun 2021 08:53:08 -0400 (EDT)
Date: Fri, 18 Jun 2021 08:53:08 -0400
From: Vivek Goyal <vgoyal@redhat.com>
To: Miklos Szeredi <miklos@szeredi.hu>
Message-ID: <20210618125308.GB1234055@redhat.com>
References: <20210614174454.903555-1-vgoyal@redhat.com>
 <20210614174454.903555-2-vgoyal@redhat.com>
 <CAJfpeguD+F3Ai01=-JYNTKS4LP4d879=+8T7eOBewZpevTRbJg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJfpeguD+F3Ai01=-JYNTKS4LP4d879=+8T7eOBewZpevTRbJg@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1luDzu-0002EK-Va
Subject: Re: [V9fs-developer] [PATCH v2 1/2] init/do_mounts.c: Add a path to
 boot from tag based filesystems
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
Cc: David Howells <dhowells@redhat.com>, Christoph Hellwig <hch@infradead.org>,
 Richard Weinberger <richard.weinberger@gmail.com>,
 linux-kernel@vger.kernel.org, "Dr. David Alan Gilbert" <dgilbert@redhat.com>,
 virtio-fs-list <virtio-fs@redhat.com>, Al Viro <viro@zeniv.linux.org.uk>,
 Stefan Hajnoczi <stefanha@redhat.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, Jun 18, 2021 at 09:07:14AM +0200, Miklos Szeredi wrote:
> On Mon, 14 Jun 2021 at 19:45, Vivek Goyal <vgoyal@redhat.com> wrote:
> >
> > We want to be able to mount virtiofs as rootfs and pass appropriate
> > kernel command line. Right now there does not seem to be a good way
> > to do that. If I specify "root=myfs rootfstype=virtiofs", system
> > panics.
> >
> > virtio-fs: tag </dev/root> not found
> > ..
> > ..
> > [ end Kernel panic - not syncing: VFS: Unable to mount root fs on
> > +unknown-block(0,0) ]
> >
> > Basic problem here is that kernel assumes that device identifier
> > passed in "root=" is a block device. But there are few execptions
> > to this rule to take care of the needs of mtd, ubi, NFS and CIFS.
> >
> > For example, mtd and ubi prefix "mtd:" or "ubi:" respectively.
> >
> > "root=mtd:<identifier>" or "root=ubi:<identifier>"
> >
> > NFS and CIFS use "root=/dev/nfs" and CIFS passes "root=/dev/cifs" and
> > actual root device details come from filesystem specific kernel
> > command line options.
> >
> > virtiofs does not seem to fit in any of the above categories. In fact
> > we have 9pfs which can be used to boot from but it also does not
> > have a proper syntax to specify rootfs and does not fit into any of
> > the existing syntax. They both expect a device "tag" to be passed
> > in a device to be mounted. And filesystem knows how to parse and
> > use "tag".
> >
> > So there seem to be a class of filesystems which specify root device
> > using a "tag" which is understood by the filesystem. And filesystem
> > simply expects that "tag" to be passed as "source" of mount and
> > how to mount filesystem using that "tag" is responsibility of filesystem.
> >
> > This patch proposes that we internally create a list of filesystems
> > which pass a "tag" in "root=<tag>" and expect that tag to be passed
> > as "source" of mount. With this patch I can boot into virtiofs rootfs
> > with following syntax.
> >
> > "root=myfs rootfstype=virtiofs rw"
> 
> The syntax and the implementation looks good.
> 
> Acked-by: Miklos Szeredi <mszeredi@redhat.com>

Thanks Miklos. Now Christoph has come up with another patch series to
achieve the same. And that patches series looks better than my patches.

https://lore.kernel.org/linux-fsdevel/20210617153649.1886693-1-hch@lst.de/

There are couple of minor issues to be taken care of. I am hoping after
that these patches can be merged.

Thanks
Vivek



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
