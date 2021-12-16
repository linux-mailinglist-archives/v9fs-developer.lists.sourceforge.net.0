Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F005477CC0
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Dec 2021 20:46:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mxwiG-0002DD-B5; Thu, 16 Dec 2021 19:46:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <torvalds@linuxfoundation.org>) id 1mxwiE-0002D6-OB
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 19:46:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1YEg3xCizKQigIIVaj+7NPGS0vV5YzouOWDo8EKHI8Y=; b=gvqJfFij1zd/ODOS5V1o91W3G8
 PVS+9FbGbMGbGatmJ/Mu72A/b1LBNr+F6eHGXBtSo5HUuIcpgoTWHcJWtWGFCjIzoyr9sPu2GSpO9
 0tbGljtesx/mv4v1mH90T1A0D3EQ7eJJ97cg1V17XSh3nWtEXjc+7j3qIM74YuiLhl0g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1YEg3xCizKQigIIVaj+7NPGS0vV5YzouOWDo8EKHI8Y=; b=GDce2vfbhCHDjO04wy9FE6wGwm
 rGq3cX41aEaT8AchyjddRo3CHgbf1uiboWAm0wvJW+Bx3rPijhqTW2ONEr/iSm4aHy50nWJe5q0Vw
 t/QOlJ3bZ3DXGfTlFNxnejnlVnZvE6TLoOqMUPHAk81fYBfvgMNqnCBO1ifmpFUh9f+U=;
Received: from mail-ed1-f41.google.com ([209.85.208.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mxwiC-0005sk-13
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 19:46:47 +0000
Received: by mail-ed1-f41.google.com with SMTP id o20so91250401eds.10
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 16 Dec 2021 11:46:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1YEg3xCizKQigIIVaj+7NPGS0vV5YzouOWDo8EKHI8Y=;
 b=dGLplsJKLLH7R55fT9CGKpQ+QAOXByetGDAZO4Qe5hOY96iYDADZXPv6IaRTnkyzZU
 YI08eiKnx/i5FnO61PQJoSbspOCrTKasx1Wska9nu2oEvPHzOmLFcQpapSbFWwnZ/gZJ
 a5Drpm7Pl4iYA3ZnJI1TCTMw/SmbnFNAdcPBg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1YEg3xCizKQigIIVaj+7NPGS0vV5YzouOWDo8EKHI8Y=;
 b=tUspYIx8Kf5ioGceY8IM98JTDuKaDh1qlinPz4ZP4U8XkZiMgGj/4H8iLc6huafHUI
 iCe0OyY3HbISZKD/BaXNfhgqah/Otyld8DoIF1K7Mh0v79RjEJyqe8Kd5twAbsfK30V3
 enVELm01XC0hqXe5OmOmAMOyZoV0ecXFVAy5G2ezBLc4Y2F+4YEke0QEMcQcC4zDIxCt
 HKrRt2EncF/gYh4j4YH2qAp2ePormygVnrYNHt94X2PVam4ODRfzd6IfUF9zPiK0B7fH
 aKue0cP3RGPIn/X3Z+2EBJuDQ9ycM4lVRmFZSgcBXG06KntL5Xtu4BLX3h6YHdC9ZO06
 z0AA==
X-Gm-Message-State: AOAM533hrpLAwPd0/E+NqrGnDWcSNdYwHKCq3D4yPh5nCVrF+pCd9vET
 joTFGxa4B5gBefQ/7O4zojhGdULnQB5gn+xPN4A=
X-Google-Smtp-Source: ABdhPJw94aij5drwzn9mJkU2PPOdo5DyJbgnx85pz9XjfVbsFcTm1rRw/ncqZx6AwHS/D42f9bAylg==
X-Received: by 2002:a17:906:4c99:: with SMTP id
 q25mr7879108eju.18.1639683997327; 
 Thu, 16 Dec 2021 11:46:37 -0800 (PST)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com.
 [209.85.221.49])
 by smtp.gmail.com with ESMTPSA id i10sm2152980ejw.48.2021.12.16.11.46.34
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Dec 2021 11:46:35 -0800 (PST)
Received: by mail-wr1-f49.google.com with SMTP id j18so36049wrd.2
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 16 Dec 2021 11:46:34 -0800 (PST)
X-Received: by 2002:a5d:4575:: with SMTP id a21mr10519052wrc.193.1639683994422; 
 Thu, 16 Dec 2021 11:46:34 -0800 (PST)
MIME-Version: 1.0
References: <163967073889.1823006.12237147297060239168.stgit@warthog.procyon.org.uk>
 <163967169723.1823006.2868573008412053995.stgit@warthog.procyon.org.uk>
 <CAHk-=wi0H5vmka1_iWe0+Yc6bwtgWn_bEEHCMYsPHYtNJKZHCQ@mail.gmail.com>
 <YbuTaRbNUAJx5xOA@casper.infradead.org>
In-Reply-To: <YbuTaRbNUAJx5xOA@casper.infradead.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 16 Dec 2021 11:46:18 -0800
X-Gmail-Original-Message-ID: <CAHk-=wh2dr=NgVSVj0sw-gSuzhxhLRV5FymfPS146zGgF4kBjA@mail.gmail.com>
Message-ID: <CAHk-=wh2dr=NgVSVj0sw-gSuzhxhLRV5FymfPS146zGgF4kBjA@mail.gmail.com>
To: Matthew Wilcox <willy@infradead.org>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Dec 16,
 2021 at 11:28 AM Matthew Wilcox <willy@infradead.org>
 wrote: > > Since ->write_begin is the place where we actually create folios,
 it > needs to know what size folio to create. Unless [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.41 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.41 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1mxwiC-0005sk-13
Subject: Re: [V9fs-developer] [PATCH v3 56/68] afs: Handle len being
 extending over page end in write_begin/write_end
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
 AND..." <linux-nfs@vger.kernel.org>, CIFS <linux-cifs@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Jeff Layton <jlayton@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 David Howells <dhowells@redhat.com>, JeffleXu <jefflexu@linux.alibaba.com>,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 Marc Dionne <marc.dionne@auristor.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>, linux-afs@lists.infradead.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Dec 16, 2021 at 11:28 AM Matthew Wilcox <willy@infradead.org> wrote:
>
> Since ->write_begin is the place where we actually create folios, it
> needs to know what size folio to create.  Unless you'd rather we do
> something to actually create the folio before calling ->write_begin?

I don't think we can create a folio before that, because the
filesystem may not even want a folio (think persistent memory or
whatever).

Honestly, I think you need to describe more what you actually want to
happen. Because generic_perform_write() has already decided to use a
PAGE_SIZE by the time write_begin() is called,

Right now the world order is "we chunk things by PAGE_SIZE", and
that's just how it is.

I can see other options - like the filesystem passing in the chunk
size when it calls generic_perform_write().

Or we make the rule be that ->write_begin() simply always is given the
whole area, and the filesystem can decide how it wants to chunk things
up, and return the size of the write chunk in the status (rather than
the current "success or error").

But at no point will this *EVER* be a "afs will limit the size to the
folio size" issue. Nothing like that will ever make sense. Allowing
bigger chunks will not be about any fscache issues, it will be about
every single filesystem that uses generic_perform_write().

So I will NAK these patches by David, because they are fundamentally
wrong, whichever way we turn. Any "write in bigger chunks" patch will
be something else entirely.

                 Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
