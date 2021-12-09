Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C281C46F679
	for <lists+v9fs-developer@lfdr.de>; Thu,  9 Dec 2021 23:08:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mvRaA-00041r-10; Thu, 09 Dec 2021 22:08:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <torvalds@linuxfoundation.org>) id 1mvRa8-00041f-4M
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Dec 2021 22:08:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RHArNxFMHgs9P3JmMQUjRcZVsX1YeVD3wW/DAeZt5nA=; b=ERlWEI+zs+jXAsWiRCxaVa7OGi
 TkWw4JLOuIvvgSKiS5NW/GWMTC4iXZlTZS44L0ZofIkzMgp3oKPAprdlDcVez5NNnnYkgIMo05uGz
 8qm9T2U1XTJOxgmOtG5bSSnooXxxKWCMwKHjPS2A2CIlNMs6GefavOvnj3jvRyUB9vWc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RHArNxFMHgs9P3JmMQUjRcZVsX1YeVD3wW/DAeZt5nA=; b=EcH5AG2F5dxzKqC4Tk5FNOPCH5
 OpX+2cXxb7SP0KmPpT5YADBf3OaIIny+q6th2wL/3SSSVYdqYPaNoBsmf6yUbmAm8dUGDzs4mTNF1
 RelUNbSnheNR0b9pMI70eY7Q/Ff6wR4usdvuoJ7y4d9riOBFs1cFo9HltoUt16CT3jmg=;
Received: from mail-ed1-f51.google.com ([209.85.208.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mvRa3-00AQmj-Li
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Dec 2021 22:08:04 +0000
Received: by mail-ed1-f51.google.com with SMTP id e3so24506554edu.4
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 09 Dec 2021 14:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RHArNxFMHgs9P3JmMQUjRcZVsX1YeVD3wW/DAeZt5nA=;
 b=JhUfOUJjxhGRzHwksR/Q8zG3IINBIKaphSkRwJzWYADLahSsN6d7219QvbpoEd8Y7k
 Ufk/H24zbV7UnfRzWnZtmEkNZrNUh/75SD5YVhHcTNkE8nvjcjbuV/8uU1FIxASJeztH
 4gA4ykWichWHKmWefAIY/la0fzYo0je1n6xY0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RHArNxFMHgs9P3JmMQUjRcZVsX1YeVD3wW/DAeZt5nA=;
 b=o9QEJ/PxfC5o1+GpKTKP/j4SJ9fG+0SCGViTtzu7YSQZDU5DYxH5Ru6hJMVIy9+Tcj
 64bGM5IP5ZLct2bZBWk5Z9tbjha53GoX+lZh0hs0A6j23nxDXAjwW7c5rgidu2MnGbaf
 XT4XPZ2UFX53mTq+TkYrEGYUHo3/FebtQxc03McWbNCj1O1AXUBOV3ibDHvY3+x6IUS6
 6jgRHmjG2/t36I7o8ivaLmfF+FzqNQujWopohc/9hIhhmBe3teETFIpbQ9q70O6Ymeci
 U0oi0AShNNa1dYqadCqLOvZiTY2tqZ4lg8QoIGX3ZO75/ggSOiCjfkxEQOYxjYOzt7x/
 262A==
X-Gm-Message-State: AOAM533+DCEjRuR1+8CPJfu40t74zq/bhbsok8JCmyDXn/gSMlclpqTX
 VKvLZ0+vU9QYjmD7ej4yoVPkRMyBIOpi5kzfT88=
X-Google-Smtp-Source: ABdhPJyvY5MrqBcF/AIuClu2ujxLEP0OMf78b7Qdq+xQD5//YMkfRox3TnE4+SwbtvxuPWrrBkF22Q==
X-Received: by 2002:a05:6402:4396:: with SMTP id
 o22mr32947163edc.263.1639087672754; 
 Thu, 09 Dec 2021 14:07:52 -0800 (PST)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com.
 [209.85.221.51])
 by smtp.gmail.com with ESMTPSA id hr17sm497568ejc.57.2021.12.09.14.07.49
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Dec 2021 14:07:50 -0800 (PST)
Received: by mail-wr1-f51.google.com with SMTP id d24so12207237wra.0
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 09 Dec 2021 14:07:49 -0800 (PST)
X-Received: by 2002:adf:f8c3:: with SMTP id f3mr9535285wrq.495.1639087669394; 
 Thu, 09 Dec 2021 14:07:49 -0800 (PST)
MIME-Version: 1.0
References: <163906878733.143852.5604115678965006622.stgit@warthog.procyon.org.uk>
 <163906888735.143852.10944614318596881429.stgit@warthog.procyon.org.uk>
 <CAHk-=wiTquFUu-b5ME=rbGEF8r2Vh1TXGfaZZuXyOutVrgRzfw@mail.gmail.com>
 <159180.1639087053@warthog.procyon.org.uk>
In-Reply-To: <159180.1639087053@warthog.procyon.org.uk>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 9 Dec 2021 14:07:33 -0800
X-Gmail-Original-Message-ID: <CAHk-=whtkzB446+hX0zdLsdcUJsJ=8_-0S1mE_R+YurThfUbLA@mail.gmail.com>
Message-ID: <CAHk-=whtkzB446+hX0zdLsdcUJsJ=8_-0S1mE_R+YurThfUbLA@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Dec 9,
 2021 at 1:57 PM David Howells <dhowells@redhat.com>
 wrote: > > What I'm trying to get at is that the hash needs to be consistent, 
 no matter > the endianness of the cpu, for any particul [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.51 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.51 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1mvRa3-00AQmj-Li
Subject: Re: [V9fs-developer] [PATCH v2 07/67] fscache: Implement a hash
 function
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

On Thu, Dec 9, 2021 at 1:57 PM David Howells <dhowells@redhat.com> wrote:
>
> What I'm trying to get at is that the hash needs to be consistent, no matter
> the endianness of the cpu, for any particular input blob.

Yeah, if that's the case, then you should probably make that "unsigned
int *data" argument probably just be "void *" and then:

>                 a = *data++;   <<<<<<<
>                 HASH_MIX(x, y, a);
>         }
>         return fold_hash(x, y);
> }
>
> The marked line should probably use something like le/be32_to_cpu().

Yes, it should be using a '__le32 *' inside that function and you
should use l32_to_cpu(). Obviously, BE would work too, but cause
unnecessary work on common hardware.

But as mentioned for the other patches, you should then also be a lot
more careful about always using the end result as an 'unsigned int'
(or maybe 'u32') too, and when comparing hashes for binary search or
other, you should always do th4e compare in some stable format.

Because doing

        return (long)hash_a - (long)hash_b;

and looking at the sign doesn't actually result in a stable ordering
on 32-bit architectures. You don't get a transitive ordering (ie a < b
and b < c doesn't imply a < c).

And presumably if the hashes are meaningful across machines, then hash
comparisons should also be meaningful across machines.

So when comparing hashes, you need to compare them either in a truly
bigger signed type (and make sure that doesn't get truncated) - kind
of like how a lot of 'memcmp()' functions do 'unsigned char'
subtractions in an 'int' - or you need to compare them _as_ 'unsigned
int'.

Otherwise the comparisons will be all kinds of messed up.

          Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
