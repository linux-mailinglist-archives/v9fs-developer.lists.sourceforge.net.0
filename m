Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7915646F1BE
	for <lists+v9fs-developer@lfdr.de>; Thu,  9 Dec 2021 18:25:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mvNAj-0004MH-Nd; Thu, 09 Dec 2021 17:25:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <torvalds@linuxfoundation.org>) id 1mvNAh-0004MA-Mw
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Dec 2021 17:25:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iqExJZ9/DphBTKULUzi0rda5Ww/lFJEMJ0HrtECPjTI=; b=hJHLF44zkBElcab/KkhrW0VFFK
 a0ITy4TuNszptHZL0Y3TY1f+hKAQD6hSGa/KsIYIgiTCXv6NE14NmwDbzLdILGKsdLqfghKrK55+X
 hkJlPHGVNAMZCMX6OReB/yP6A7mBGVBKuKZcm/QDvbltzsITpcKt5M6ggEePMhL8ma14=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iqExJZ9/DphBTKULUzi0rda5Ww/lFJEMJ0HrtECPjTI=; b=f9LKQjriPCCkkJzNmsn526eK6c
 cxmnx+foq0Rg0BtVjjSbKSGOaAKnl6N5eZ3qcX9x6dDN8UILn79lod3uVMRl8++q/jr1a71K6DZkT
 SpgG21rkOSFXIoSYrpOKbKr/wKxb5A8UwzywK45DJnCItLWWYhbgzVhv/ZEgQX2KArzg=;
Received: from mail-ed1-f53.google.com ([209.85.208.53])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mvNAi-00AD92-1f
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Dec 2021 17:25:32 +0000
Received: by mail-ed1-f53.google.com with SMTP id g14so21159718edb.8
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 09 Dec 2021 09:25:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iqExJZ9/DphBTKULUzi0rda5Ww/lFJEMJ0HrtECPjTI=;
 b=CEZX4drLnp80p9b9oVxK0f0qT2WA3YF+B1Tl8CQVWg2uGKK6+gQz0h/GPS2FyiNNJ9
 gAKRuC48E81Hb/mGX0sY3phjIF/WMv16b9bipyIo+rIOFDAbKwrmyJ7HqNkTia2gkVbu
 /I1NAgDWldKvVVC+e1z0jNAfGMMlQioj2HEiU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iqExJZ9/DphBTKULUzi0rda5Ww/lFJEMJ0HrtECPjTI=;
 b=6CHaRM/IvZRJk8uyyHNe17WX1pjM3upsi7kQQaU8nH5RRRrjFXtk8MEhBs1vfCBfAq
 VIaSY5vLJWmrC2gBFstYOgGGFIxi8hie8L3ORKRxUZ3FXF7wTirEX9NOjLr1X6V6P9dj
 u9r8vQfbv6eJiFQ8Llvn9usVCWvgtGVwu1lxQLHcXIB+VrDzQiMCjr46uix1BbKMny8d
 VDV+CkzHwbmJm2AX0cLlZy9nLQE28DJ1Y1DKguu20dhxuv25Nq6BiVWiwQkGcj3d/RrW
 sm3OYpn50PSHADe8v6slEnkiAJINjUjDeoHkZACASGizaTdy83p4+KhBGLLP4wefon6j
 DNtA==
X-Gm-Message-State: AOAM532nAXdWkmFp1yISs3Uc/fUoWoxlXgO2s4Wdfwm7qmkGS8HfAh8x
 qPiw0zyLW4TOnZghF7Bj3AkdnE3MUGoQ0aEj
X-Google-Smtp-Source: ABdhPJzNS/mICuzlkfi2DQ7pvIjxB0mt5EBPrHnr5NeXXMfrTl9zQty9Saxi582VMWLBA9dylBlNhQ==
X-Received: by 2002:aa7:dd53:: with SMTP id o19mr29836419edw.369.1639070536390; 
 Thu, 09 Dec 2021 09:22:16 -0800 (PST)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com.
 [209.85.128.44])
 by smtp.gmail.com with ESMTPSA id sg17sm230126ejc.72.2021.12.09.09.22.14
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Dec 2021 09:22:15 -0800 (PST)
Received: by mail-wm1-f44.google.com with SMTP id i12so4784384wmq.4
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 09 Dec 2021 09:22:14 -0800 (PST)
X-Received: by 2002:a05:600c:22ce:: with SMTP id
 14mr8659906wmg.152.1639070533785; 
 Thu, 09 Dec 2021 09:22:13 -0800 (PST)
MIME-Version: 1.0
References: <163906878733.143852.5604115678965006622.stgit@warthog.procyon.org.uk>
 <163906891983.143852.6219772337558577395.stgit@warthog.procyon.org.uk>
In-Reply-To: <163906891983.143852.6219772337558577395.stgit@warthog.procyon.org.uk>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 9 Dec 2021 09:21:57 -0800
X-Gmail-Original-Message-ID: <CAHk-=wgejk2DA53dkzs6NquDbQk5_r6Hw8_-RJQ0_njNijKYew@mail.gmail.com>
Message-ID: <CAHk-=wgejk2DA53dkzs6NquDbQk5_r6Hw8_-RJQ0_njNijKYew@mail.gmail.com>
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
 wrote: > > + buf = (u32 *)cookie->inline_key;
 > + } > + > + memcpy(buf, index_key,
 index_key_len); > + cookie->key_hash = fscache_has [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.53 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.53 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1mvNAi-00AD92-1f
Subject: Re: [V9fs-developer] [PATCH v2 10/67] fscache: Implement cookie
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
> +               buf = (u32 *)cookie->inline_key;
> +       }
> +
> +       memcpy(buf, index_key, index_key_len);
> +       cookie->key_hash = fscache_hash(cookie->volume->key_hash, buf, bufs);

This is actively wrong given the noise about "endianness independence"
of the fscache_hash() function.

There is absolutely nothing endianness-independent in the above.
You're taking some random data, casting the pointer to a native
word-order 32-bit entity, and then doing things in that native word
order.

The same data will give different results on different endiannesses.

Maybe some other code has always munged stuff so that it's in some
"native word format", but if so, the type system should have been made
to match. And it's not. It explicitly casts what is clearly some other
pointer type to "u32 *".

There is no way in hell this is properly endianness-independent with
each word in an array having some actual endianness-independent value
when you write code like this.

I'd suggest making endianness either explicit (make things explicitly
"__le32" or whatever) and making sure that you don't just randomly
cast pointers, you actually have the proper types.

Or, alternatively, just say "nobody cares about BE any more,
endianness isn't relevant, get over it".

But don't have functions that claim to be endianness-independent and
then randomly access data like this.

              Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
