Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A53134778F9
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Dec 2021 17:28:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mxtc7-0005w5-U1; Thu, 16 Dec 2021 16:28:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <torvalds@linuxfoundation.org>) id 1mxtc6-0005vz-Bh
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 16:28:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fkh9SA21WJAwLXrex3D5hDMvc6XDF8J0dz4irJ+Ae9Y=; b=cBRvB9GgycmgxtYyE0RL5g3PST
 ZmtcdVky+T6d4I4FwllhLC/yl8shNAZ8gAHL348ej/DZxOwXwloHw4H7Xreb+wn0VjNkiVnmyga5P
 PA066qkEYZQNjBkMstL7VPtj3rxXVyS8XUQxvahJGBQPuhO2qxaCG1OISOkDECktCABU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fkh9SA21WJAwLXrex3D5hDMvc6XDF8J0dz4irJ+Ae9Y=; b=OqJ1YDr5q1TDjTV6Nzx5baK7nP
 WnDO1a3asX0WisNnT6FzqEWRGfnOPjBh2mvdU//Svgi6GaZ/G3GWaz3EKW1cDCT3DVEK+uT1yV3MM
 rDcyXVhtr823jKp4zxOTj6rSOi8ArPGilcLGVaD5+dSeiVIs1fkxlvbddNUobpJ8uNI8=;
Received: from mail-ed1-f48.google.com ([209.85.208.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mxtc5-0005Dm-Lz
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 16:28:14 +0000
Received: by mail-ed1-f48.google.com with SMTP id t5so88836054edd.0
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 16 Dec 2021 08:28:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fkh9SA21WJAwLXrex3D5hDMvc6XDF8J0dz4irJ+Ae9Y=;
 b=TZ91WtmX33bYGxQ28DYuwMlA4L/Ykfses9BBTD3iJ52Q9qh/2tU+S4awSqTTbNIEfO
 NIVIGXtvrTssU7E/Ib+EszfgqaQI3Ug/c2E/ITq3PkTvuJKpkp8KHKAP+FyMLrxxfyHm
 7LDKJiXUmfROJo2atlx1zLIBfA58BXXUjM6Yc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fkh9SA21WJAwLXrex3D5hDMvc6XDF8J0dz4irJ+Ae9Y=;
 b=we/83wWZI43H47ZF03JWBAfJsDeIsJCnygwoWjvGg5weTtpYhXm/KLGYeef/V2af8w
 gGLDUJ5PyRAJaFJqWmII+69+2/YxJ4LcXF1UvM10C/r+Y8liKCAMOuJEUEokq3LWhogb
 YM0QdhMCNCyi/UrzI1mJSOFBK+unjUbNgycrNHAWktkCKLgP8wIPJEeR0OY79P+bHLhu
 U15TJnxURBI2kzNiRRIBWVdDuUm+vKTG9kcC68qKJUTqiT8LMZivpZERC13rWXbroo1o
 pjGy59DQXDWWu/m95M+Zaf9ceMGXCDTQsozoPsEQUoygeC9Z+uURlVRoZV0SCHaBKprn
 ngXQ==
X-Gm-Message-State: AOAM530nxbCJFe7c1LbBH6be/NWwuyvqCzYiCGBajGzV9rZyXrJ1KQ/n
 0wAA0l9zJzc8rNIDC6FD8UauckmjH5I4RT74
X-Google-Smtp-Source: ABdhPJwwWK5Ur5ltTtPrWblCmyqsfA0oPRFFBjNClVGqzk6ZiUx810KkQUc0LMX+TEzGa4+pbsZOzw==
X-Received: by 2002:a05:6402:5244:: with SMTP id
 t4mr21120148edd.27.1639672087281; 
 Thu, 16 Dec 2021 08:28:07 -0800 (PST)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com.
 [209.85.221.47])
 by smtp.gmail.com with ESMTPSA id c28sm1998206ejj.207.2021.12.16.08.28.06
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Dec 2021 08:28:07 -0800 (PST)
Received: by mail-wr1-f47.google.com with SMTP id e5so11767406wrc.5
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 16 Dec 2021 08:28:06 -0800 (PST)
X-Received: by 2002:a5d:6211:: with SMTP id y17mr9727999wru.97.1639672086343; 
 Thu, 16 Dec 2021 08:28:06 -0800 (PST)
MIME-Version: 1.0
References: <163967073889.1823006.12237147297060239168.stgit@warthog.procyon.org.uk>
 <163967172373.1823006.6118195970180365070.stgit@warthog.procyon.org.uk>
In-Reply-To: <163967172373.1823006.6118195970180365070.stgit@warthog.procyon.org.uk>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 16 Dec 2021 08:27:50 -0800
X-Gmail-Original-Message-ID: <CAHk-=wjiba2VRKKjOYAiCZn1Tk9H1tiXcOvjekdo3wPHHmedyQ@mail.gmail.com>
Message-ID: <CAHk-=wjiba2VRKKjOYAiCZn1Tk9H1tiXcOvjekdo3wPHHmedyQ@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Dec 16,
 2021 at 8:22 AM David Howells <dhowells@redhat.com>
 wrote: > > It is possible for the len argument to afs_write_end() to overrun
 the end > of the page (len is used to key the size of t [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.48 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.48 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1mxtc5-0005Dm-Lz
Subject: Re: [V9fs-developer] [PATCH v3 57/68] afs: Fix afs_write_end() to
 handle len > page size
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
 Matthew Wilcox <willy@infradead.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>,
 JeffleXu <jefflexu@linux.alibaba.com>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 Marc Dionne <marc.dionne@auristor.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>, linux-afs@lists.infradead.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Dec 16, 2021 at 8:22 AM David Howells <dhowells@redhat.com> wrote:
>
> It is possible for the len argument to afs_write_end() to overrun the end
> of the page (len is used to key the size of the page in afs_write_start()
> when compound pages become a regular thing).

This smells like a bug in the caller.

It's just insane to call "write_end()" with a range that doesn't
actually fit in the page provided.

Exactly how does that happen, and why should AFS deal with it, not
whoever called write_end()?

              Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
