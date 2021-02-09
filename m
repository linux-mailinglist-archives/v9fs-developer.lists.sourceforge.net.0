Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E00D315877
	for <lists+v9fs-developer@lfdr.de>; Tue,  9 Feb 2021 22:19:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l9aQ5-0001oo-D2; Tue, 09 Feb 2021 21:19:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <torvalds@linuxfoundation.org>) id 1l9aQ3-0001oa-Ks
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Feb 2021 21:19:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5NXrj70SaJJJRtMQWC0+3w4cmGywCfZjtndBL9rb8Bo=; b=OhA+b+cB4DJechXuxdgdT22fih
 JgX6skmbINBHEuNIcP/xQ01yNj+ERrdsuK0ajIy1p2tLdKfqdj2VkNFVfD6cmnO7L9tp9Thl72acx
 hcZwKIhRhl49gTDrL7qIy5fOjJmSgZi14h4SR3Zfl/+y/EOPZ1KGFohwl/+NkMoaxQxY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5NXrj70SaJJJRtMQWC0+3w4cmGywCfZjtndBL9rb8Bo=; b=C4jeQcO+c5gXn7u0ahcXEB4Hux
 UV854OF6QM84QBFK7Otp4xheEv0XqCZ/QnmbZy/PCoUH+g+1BBFwMJ5LbxmM5E0XgYQRlqZ6nJYDi
 XZjhz4NRd/IQ17ulEQi7gOFeSKnjH12FwknJqdYBmKBnvSJLNSUsR8GMyFGnp1lUecTM=;
Received: from mail-lf1-f50.google.com ([209.85.167.50])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l9aPu-000hId-FF
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Feb 2021 21:19:35 +0000
Received: by mail-lf1-f50.google.com with SMTP id p21so30540066lfu.11
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 09 Feb 2021 13:19:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5NXrj70SaJJJRtMQWC0+3w4cmGywCfZjtndBL9rb8Bo=;
 b=g8n7RWB/hph+MNS6KsfC0GffC4feoLtbwfzXkMDO5VGlvyK682yT02RPRIOW6hieUR
 nxG1Mlzbyp5mtI1Do4dwBB4pr2NfNtLSNxuXGIfX+Az+7iAT6uxAH+/kuEuPZoNDiHrT
 JX8A9+J4I4DIw7KDC1ACDk8XTP+nwuXWBZL+g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5NXrj70SaJJJRtMQWC0+3w4cmGywCfZjtndBL9rb8Bo=;
 b=EGzQgiFy0reHRyhiw5lL0B5eC2j1sDv1uYki9f5qCJ6pe2AnRcdYDspgp5hP3Iaole
 runHHhY27wsWoIbaTybU9uD3gqX9p7RL1qRmqFoE2hGDBNPH8azyVKA8oAixipYk9NHM
 SLa2yP4y/cNxYcfduBxl4bgqQmgPJ7l7kEeridZV7pDIU1SX/PVc64noDrykH6dQFaoE
 3Ktj8AKbfB9OB0ARqIANDuWilaAVZ0nrGCDc4mbz8UP6de1sSN++jDNkdZkH3caKug+5
 iWawEWjjIlr0FQuN2JeFWQufzm/GCZD5+CGjTzo6YhGbGqtCQyiU2BVcWhgKyqUWSoaI
 g9Wg==
X-Gm-Message-State: AOAM5326GzwdsWsvH6pW5+15frZcrxq2xM9E7CkFTRGnH73v2/uwMSGY
 NPuqhI/Ili5gAf6VJW2LwCUotsx+MyyHGQ==
X-Google-Smtp-Source: ABdhPJxIZMQ3JdjpvU+YM2FsigKi0DHbgvCFUO3QoqxdStJJu9FDPVrWF2trNe7aiL61aA8h7xN8eA==
X-Received: by 2002:a19:f00a:: with SMTP id p10mr14812099lfc.355.1612905559461; 
 Tue, 09 Feb 2021 13:19:19 -0800 (PST)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com.
 [209.85.208.179])
 by smtp.gmail.com with ESMTPSA id a7sm2723506lfb.308.2021.02.09.13.19.17
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Feb 2021 13:19:17 -0800 (PST)
Received: by mail-lj1-f179.google.com with SMTP id r23so68341ljh.1
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 09 Feb 2021 13:19:17 -0800 (PST)
X-Received: by 2002:a2e:b1c8:: with SMTP id e8mr15253931lja.251.1612905557284; 
 Tue, 09 Feb 2021 13:19:17 -0800 (PST)
MIME-Version: 1.0
References: <591237.1612886997@warthog.procyon.org.uk>
 <CAHk-=wj-k86FOqAVQ4ScnBkX3YEKuMzqTEB2vixdHgovJpHc9w@mail.gmail.com>
 <20210209202134.GA308988@casper.infradead.org>
In-Reply-To: <20210209202134.GA308988@casper.infradead.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 9 Feb 2021 13:19:01 -0800
X-Gmail-Original-Message-ID: <CAHk-=wh+2gbF7XEjYc=HV9w_2uVzVf7vs60BPz0gFA=+pUm3ww@mail.gmail.com>
Message-ID: <CAHk-=wh+2gbF7XEjYc=HV9w_2uVzVf7vs60BPz0gFA=+pUm3ww@mail.gmail.com>
To: Matthew Wilcox <willy@infradead.org>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.50 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.50 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l9aPu-000hId-FF
Subject: Re: [V9fs-developer] [GIT PULL] fscache: I/O API modernisation and
 netfs helper library
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
Cc: Steve French <sfrench@samba.org>, "open list:NFS, SUNRPC,
 AND..." <linux-nfs@vger.kernel.org>, Jeff Layton <jlayton@redhat.com>,
 CIFS <linux-cifs@vger.kernel.org>, David Wysochanski <dwysocha@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-afs@lists.infradead.org, David Howells <dhowells@redhat.com>,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Feb 9, 2021 at 12:21 PM Matthew Wilcox <willy@infradead.org> wrote:
>
> Yeah, I have trouble with the private2 vs fscache bit too.  I've been
> trying to persuade David that he doesn't actually need an fscache
> bit at all; he can just increment the page's refcount to prevent it
> from being freed while he writes data to the cache.

Does the code not hold a refcount already?

Honestly, the fact that writeback doesn't take a refcount, and then
has magic "if writeback is set, don't free" code in other parts of the
VM layer has been a problem already, when the wakeup ended up
"leaking" from a previous page to a new allocation.

I very much hope the fscache bit does not make similar mistakes,
because the rest of the VM will _not_ have special "if fscache is set,
then we won't do X" the way we do for writeback.

So I think the fscache code needs to hold a refcount regardless, and
that the fscache bit is set the page has to have a reference.

So what are the current lifetime rules for the fscache bit?

             Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
