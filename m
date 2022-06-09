Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D5CB545768
	for <lists+v9fs-developer@lfdr.de>; Fri, 10 Jun 2022 00:28:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nzQdY-0003SV-U1; Thu, 09 Jun 2022 22:28:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <torvalds@linuxfoundation.org>) id 1nzQdX-0003SP-LZ
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Jun 2022 22:28:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6UoMg7XAdZhjLF3+TuyFXMPmzf7hGCGFPyI+PbeCZf8=; b=A5eKQ97n3ycnuI2a474SOm4DR+
 nKoz8PyH/oAj0WsMFDGP3R1RioDyIfL1YesLyp99knulxaT6A2E1KxzRqG2lyzItzEegqVuEM/e1x
 7YWsoedDSjfl2ymGl0AjWWAd6toGkNl6G0SjviJ2DLyk/soJ37QnVLSGbMhSeJppxu4c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6UoMg7XAdZhjLF3+TuyFXMPmzf7hGCGFPyI+PbeCZf8=; b=RTRZLkA+7RPQRO8Ob5YLAdifzB
 /TWKG9nf97lqvF7WH0tr4poXhC8rIn1VEla09vFMkketvq9ph7GyctPJy7/y2RPu8SSwkG1c+TVa+
 RS6GR2wgpnMLD1emS6EZlKf0q9eDKWi/eP+wgXs0GOKIYTcTUAhvKr01zhYWRudL3ok4=;
Received: from mail-lj1-f174.google.com ([209.85.208.174])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nzQdR-00CoqO-0X
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Jun 2022 22:28:19 +0000
Received: by mail-lj1-f174.google.com with SMTP id s13so27696561ljd.4
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 09 Jun 2022 15:28:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6UoMg7XAdZhjLF3+TuyFXMPmzf7hGCGFPyI+PbeCZf8=;
 b=bg+vgE40WdCztmrYjVSM/YJF9ZXtLor8NrvacxWrs8tmReVOyatbyF3+bwL2eQ+QeM
 h+OM4NPlRuZy2i1/Ro6kdbLrzQGd7SZNUFH7OSOKsX6tGe3TeNeXQa/eGc0tnjd1Yy2D
 IwGPT6SLiwVu0vhgUhkqA+ubHnvIUAQpO7X4w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6UoMg7XAdZhjLF3+TuyFXMPmzf7hGCGFPyI+PbeCZf8=;
 b=b5eeOmj3FuOsEq87hTelb0ZcxJHXh5wKwEPABqo1IuWeHwx5UshLH5UITGgq62k7aD
 h3eb50dG5xfJ73XRIE9SnbE/9IJkF+upadpv5nMHp0X5DFq3JR3u1wBZH9W3sAiCWNRh
 OqmyKqRRSuOwO0uaYnd40E+TbezKH12AICyMFOIIiNVtsm/1KuX4p9hK6s2KLw6PFCZn
 tT1yw9KxjkaXhPX3kMB9q6fuLQJtU0H1QxqA47qs6TQedUpTZ9F/frCTk5Zi0rZrUOCU
 9flNcQ1pSv86iQIXkW0ZSZJSJDqmtYOUc/fhEP7SINCHOWAg6TWOkSq6S+F/32SuGBYg
 QYAw==
X-Gm-Message-State: AOAM531TlXN18TtvMxn6tTCWFsKiAYH4rMhujf33S32NSa/dy4SihotD
 ZwxY1NRa+h8FMo2syQlKuWTSBNbA/ix6ZaRQhWE=
X-Google-Smtp-Source: ABdhPJz4oSwaThOwH+VKBcHt4KrVP3A1xwZpAn9pj7BiupHYZhv705w3Z+AugjQzl0UHevAkY80eog==
X-Received: by 2002:a17:906:11d:b0:712:abf:3210 with SMTP id
 29-20020a170906011d00b007120abf3210mr4487012eje.292.1654812363334; 
 Thu, 09 Jun 2022 15:06:03 -0700 (PDT)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com.
 [209.85.128.43]) by smtp.gmail.com with ESMTPSA id
 b8-20020aa7c6c8000000b0042617ba637bsm15403891eds.5.2022.06.09.15.06.03
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Jun 2022 15:06:03 -0700 (PDT)
Received: by mail-wm1-f43.google.com with SMTP id a10so10522752wmj.5
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 09 Jun 2022 15:06:03 -0700 (PDT)
X-Received: by 2002:a05:600c:42c6:b0:39c:4bfd:a4a9 with SMTP id
 j6-20020a05600c42c600b0039c4bfda4a9mr5442248wme.8.1654812362760; Thu, 09 Jun
 2022 15:06:02 -0700 (PDT)
MIME-Version: 1.0
References: <40676.1654807564@warthog.procyon.org.uk>
 <CAHk-=wgkwKyNmNdKpQkqZ6DnmUL-x9hp0YBnUGjaPFEAdxDTbw@mail.gmail.com>
In-Reply-To: <CAHk-=wgkwKyNmNdKpQkqZ6DnmUL-x9hp0YBnUGjaPFEAdxDTbw@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 9 Jun 2022 15:05:46 -0700
X-Gmail-Original-Message-ID: <CAHk-=whGrrF20LshkNGJ41UmNN13MU6x0_npwaJQi9cr626GQQ@mail.gmail.com>
Message-ID: <CAHk-=whGrrF20LshkNGJ41UmNN13MU6x0_npwaJQi9cr626GQQ@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jun 9,
 2022 at 3:04 PM Linus Torvalds <torvalds@linux-foundation.org>
 wrote: > > IOW, I think you really should do something like the attached
 on top > of this all. Just to clarify: I did apply your patch. It's an
 improvement on what used to go on. 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.174 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.174 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1nzQdR-00CoqO-0X
Subject: Re: [V9fs-developer] [PATCH] netfs: Fix gcc-12 warning by embedding
 vfs inode in netfs_i_context
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
Cc: Latchesar Ionkov <lucho@ionkov.net>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 samba-technical@lists.samba.org,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Dave Chinner <david@fromorbit.com>,
 William Kucharski <william.kucharski@oracle.com>,
 linux-hardening@vger.kernel.org, Marc Dionne <marc.dionne@auristor.com>,
 linux-afs@lists.infradead.org, CIFS <linux-cifs@vger.kernel.org>,
 Jonathan Corbet <corbet@lwn.net>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Steve French <smfrench@gmail.com>, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>, Kees Cook <keescook@chromium.org>,
 Eric Van Hensbergen <ericvh@gmail.com>, ceph-devel@vger.kernel.org,
 Xiubo Li <xiubli@redhat.com>, Jeff Layton <jlayton@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Jun 9, 2022 at 3:04 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> IOW, I think you really should do something like the attached on top
> of this all.

Just to clarify: I did apply your patch. It's an improvement on what
used to go on.

I just think it wasn't as much of an improvement that it should have
been, and that largely untested patch I attached is I think another
step in a better direction.

                      Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
