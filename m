Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6EB46F225
	for <lists+v9fs-developer@lfdr.de>; Thu,  9 Dec 2021 18:35:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mvNKO-0005Be-4H; Thu, 09 Dec 2021 17:35:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <torvalds@linuxfoundation.org>) id 1mvNKM-0005BW-Iz
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Dec 2021 17:35:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0Ief/4lrcrFC9yHQblzF1a8RET0HNi3QQm3divo4aI0=; b=fL8BsPtLg05PJ4zGCWF2CHkC4C
 mI3DKjM70cs4RDc/yBA5XfGoOTkIcLIje3lNaQpRinMZ5peLUHGbOPlWr/QnwTt/3KArcnQtiII8K
 iOOPUG8fLIvwT5y+9p84U0q8cw6gToykPhoq9yVPLRRc3QECnp1xPSY/vJRZbI2SfQJk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0Ief/4lrcrFC9yHQblzF1a8RET0HNi3QQm3divo4aI0=; b=lK1iQLymb1+oy5LthaN21cuLge
 zFwczfRClm4Mne5VNJBBSxGJ90vUC3dAePzbnAizRhPPSD2LJe91sw8Jb9/Eqt7bVJBivUhwsYi+N
 vNwRRTghyYhAnM3YnfGufNkT+/+lZEECbUndAo38tQmkcoXA0M8xj0ysWf/7Z3HNqU0w=;
Received: from mail-ed1-f44.google.com ([209.85.208.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mvNKM-00ADiw-S6
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Dec 2021 17:35:31 +0000
Received: by mail-ed1-f44.google.com with SMTP id o20so22169372eds.10
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 09 Dec 2021 09:35:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0Ief/4lrcrFC9yHQblzF1a8RET0HNi3QQm3divo4aI0=;
 b=AdnCyXT6TPlVVq0JLA/VEVV0O33H285eATNlyLPRaIFmtxnqr6S23nXl2J32guXc1O
 plkuA6YLaLfLkkkWTPqQOSOG7bZY0JEwSmKNFIrfpMXr3oq7FfmHctvECgg0O0gJcn+c
 hrPmI2kNvz5VH+5qzZSG7wTmayKDH0Ub3btDA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0Ief/4lrcrFC9yHQblzF1a8RET0HNi3QQm3divo4aI0=;
 b=OSgldKOgZs9vCjsxQXKzi65gorOWQKbHcNSGQxJvB72rwoUhlXq1VOAaZc3yxupMAU
 BQnsYzggHEa7hOz6Jkw4tn1i3ssB7yfMbdxvHtdlCx6eLFH7sXREcjz2omY/8YcKhT67
 t3RHWhjjoEK5d7eJxoYYlc8g7cyLJ5Gc3jxjNOWCqQI9+6R7McNJfB5jzgOoRUDU8c5v
 ze8C2vlIo+46ERK0uaWDLVZRoxVcE9jIeANIPFgFOE7D4QKoFDMCqN7Od2LDno1AmpSz
 F3iQgoIodZ8Yw74PDo4wbEbxCZvV1CSfvC3dOhRiwQegni87hAPI44kVOH7QfriRe7Jt
 WM2w==
X-Gm-Message-State: AOAM531oGzC36ArEz43uP6KOOhcD+zWZqc4lBHNR5PsX8Yo7NhsxMI/H
 SjpVhjYMR+4qXJ0zGOXNvcfVvfIgYHPbMukt
X-Google-Smtp-Source: ABdhPJz8+3TeklS9/3owWpkvTb251ejBvEB0miW0kLLe6pX+BDgT8AQ5ds6tWqXlmSV2ALOELIIz+Q==
X-Received: by 2002:a17:907:868f:: with SMTP id
 qa15mr17353869ejc.187.1639071173580; 
 Thu, 09 Dec 2021 09:32:53 -0800 (PST)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com.
 [209.85.221.50])
 by smtp.gmail.com with ESMTPSA id b7sm209391edj.24.2021.12.09.09.32.51
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Dec 2021 09:32:52 -0800 (PST)
Received: by mail-wr1-f50.google.com with SMTP id d9so10988573wrw.4
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 09 Dec 2021 09:32:51 -0800 (PST)
X-Received: by 2002:a05:6000:1c2:: with SMTP id
 t2mr7703596wrx.378.1639071170949; 
 Thu, 09 Dec 2021 09:32:50 -0800 (PST)
MIME-Version: 1.0
References: <163906878733.143852.5604115678965006622.stgit@warthog.procyon.org.uk>
 <163906890630.143852.13972180614535611154.stgit@warthog.procyon.org.uk>
In-Reply-To: <163906890630.143852.13972180614535611154.stgit@warthog.procyon.org.uk>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 9 Dec 2021 09:32:34 -0800
X-Gmail-Original-Message-ID: <CAHk-=wg35xyf-HgOLcKdWVxm11vNomLVe44b1FsxvV6jDqw2CA@mail.gmail.com>
Message-ID: <CAHk-=wg35xyf-HgOLcKdWVxm11vNomLVe44b1FsxvV6jDqw2CA@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Dec 9,
 2021 at 8:55 AM David Howells <dhowells@redhat.com>
 wrote: > > +static long fscache_compare_volume(const struct fscache_volume
 *a, > + const struct fscache_volume *b) > +{ > + size_t kl [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.44 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.44 listed in list.dnswl.org]
X-Headers-End: 1mvNKM-00ADiw-S6
Subject: Re: [V9fs-developer] [PATCH v2 09/67] fscache: Implement volume
 registration
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
Cc: CIFS <linux-cifs@vger.kernel.org>, "open list:NFS, SUNRPC,
 AND..." <linux-nfs@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Jeff Layton <jlayton@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, v9fs-developer@lists.sourceforge.net,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Dec 9, 2021 at 8:55 AM David Howells <dhowells@redhat.com> wrote:
>
> +static long fscache_compare_volume(const struct fscache_volume *a,
> +                                  const struct fscache_volume *b)
> +{
> +       size_t klen;
> +
> +       if (a->key_hash != b->key_hash)
> +               return (long)a->key_hash - (long)b->key_hash;
> +       if (a->cache != b->cache)
> +               return (long)a->cache    - (long)b->cache;
> +       if (a->key[0] != b->key[0])
> +               return (long)a->key[0]   - (long)b->key[0];
> +
> +       klen = round_up(a->key[0] + 1, sizeof(unsigned int));
> +       return memcmp(a->key, b->key, klen);

None of this is endianness-independent except for the final memcmp()
(and that one assumes the data is just a "stream of bytes")

In fact, even if everybody is little-endian, the above gives different
results on 32-bit and 64-bit architectures, since you're doing math in
(possibly) 64 bits but using a 32-bit "key_hash". So sign bits will
differ, afaik.

And once again, that key_hash isn't actually endianness-independent anyway:

> +       volume->key_hash = fscache_hash(0, (unsigned int *)key,
> +                                       hlen / sizeof(unsigned int));

Yeah, for the same key data, this will give entirely different results
on LE vs BE, unless you've made sure to always convert whatever keys
from soem on-disk fixed-32-bit-endianness format to a in-memory host
endianness.

Which is a fundamental design mistake in itself. That kind of "one
endianness on disk, another in memory" is garbage.

I'm not sure any of these matter - maybe all these hashes are entirely
for in-memory stuff and never haev any longer lifetimes, so the fact
that they get calculated and compared differently depending on
endianness and depending on word size may not matter at all. You may
only care about "stable on the native architecture".

But then you shouldn't have your own hash function that you claim is
somehow endianness-safe.

If you really want to be endianness safe, *ALL* the data you work on
needs to be a proper fixed endianness format. All throught the code.
Make all key pointers always be "__le32 *", and never randomly cast
the pointer from some other data like I see in every use I actually
looked at.

                  Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
