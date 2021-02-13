Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2661E31A961
	for <lists+v9fs-developer@lfdr.de>; Sat, 13 Feb 2021 02:14:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lAjVt-0003H3-IJ; Sat, 13 Feb 2021 01:14:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <torvalds@linuxfoundation.org>) id 1lAjVr-0003Gv-Rq
 for v9fs-developer@lists.sourceforge.net; Sat, 13 Feb 2021 01:14:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=L6jTxP9hlbcUR9+3iPNQ9HmsqF25QNS6zvjTzXBH5E4=; b=PjrtU4e34ZdWH9cap8ojqcJ4J/
 HWmKhF6RLnrISDqyOwAhNMVhyb/AoCPoOWeeNf0fu78LVZ+vWQBftyKAPtDDcqZ7aHYGHiJw61ki8
 lgZyTzvFim55LThS8EtttYWIp1HCR7oEKsl0NpgejhqYNfKyYfQ+phkVh+PVrKuhkgrA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=L6jTxP9hlbcUR9+3iPNQ9HmsqF25QNS6zvjTzXBH5E4=; b=RoDZ3rChw3EffxNrNk8Y2rt0WM
 leQ3WYhldvg6RSpFAt3cU5IvaiuC/QwrauYORCU/IcYNgBbx5Zs89oIee1yQeJWkc5I2Gd7oJkejU
 YEE9On5mMXLX8HbwCvBjOUZlfvcD7HQDSyS7XsOtapieJRVECl884k/TolGMVVizi/Ic=;
Received: from mail-lf1-f51.google.com ([209.85.167.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lAjVk-006sLM-Kn
 for v9fs-developer@lists.sourceforge.net; Sat, 13 Feb 2021 01:14:19 +0000
Received: by mail-lf1-f51.google.com with SMTP id h26so2104047lfm.1
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 12 Feb 2021 17:14:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=L6jTxP9hlbcUR9+3iPNQ9HmsqF25QNS6zvjTzXBH5E4=;
 b=WUNxTILAYi3Kk+wVUIaUVhIr3oaiaHaDjKr023ekUsCD6VQNr+/uPlhMEL6q29t3EB
 7gNdhrTjI0bG4chV1tfJBSEWmnvTFlDxKHjMtcZld38+fszGfI/ow6zlOY5oPPFVrq11
 U9kc9/PviiJUNwLPvQe5fwcbGhKWs2MNkDWS8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=L6jTxP9hlbcUR9+3iPNQ9HmsqF25QNS6zvjTzXBH5E4=;
 b=kQGMWZubpceRQtir5rmY1YLD0O+CVg2Iw7nVHzdkam1DRsQav4/XWcNFs1mKUWOLEl
 JnCC2ST2n8k9jHAY45bsAJGY2kQVpy0rJxx0LAb/w8SA5IDm3SNZt0elmofGFMrb2aCw
 FK44m027l3WhBtFTRBKEkThf3EnUbJONPZzwqSzFlpD07FMt8ATuoBPx8G8vrFblhnNl
 +U6SEaKnvNBfchxQvQYbEogY+OW5cmeaJZ8FDk1B7/uUveV9P0wfnm7QwIai1Qy9K974
 RXOdrVJIKhe7LCHeS0GbtQIWw7vDuueXgmEAZx6EXWY/h7xoGLgda0YHmdIMvi0EBO7l
 aMbg==
X-Gm-Message-State: AOAM533Hfrw70fw1p0mJEgcGI9/WRcD3l271BmeUrMhi1YPm2yluCBsW
 HAF9AUFOXndLi/0V0l34bqUqe9J2xSR/ug==
X-Google-Smtp-Source: ABdhPJyeNRUGzBHoM5bx/tiwc2xGUcpcDZb3whCMU38DOSmJm/ndH7F1mFkcC4DAsORo/iCjKcWzXQ==
X-Received: by 2002:ac2:4859:: with SMTP id 25mr2792049lfy.330.1613178845692; 
 Fri, 12 Feb 2021 17:14:05 -0800 (PST)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com.
 [209.85.208.174])
 by smtp.gmail.com with ESMTPSA id n1sm1427878lfi.121.2021.02.12.17.14.05
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 12 Feb 2021 17:14:05 -0800 (PST)
Received: by mail-lj1-f174.google.com with SMTP id j6so1201582ljo.5
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 12 Feb 2021 17:14:05 -0800 (PST)
X-Received: by 2002:a2e:8049:: with SMTP id p9mr3052102ljg.411.1613178363694; 
 Fri, 12 Feb 2021 17:06:03 -0800 (PST)
MIME-Version: 1.0
References: <CAHk-=wj-k86FOqAVQ4ScnBkX3YEKuMzqTEB2vixdHgovJpHc9w@mail.gmail.com>
 <591237.1612886997@warthog.procyon.org.uk>
 <1330473.1612974547@warthog.procyon.org.uk>
 <1330751.1612974783@warthog.procyon.org.uk>
 <CAHk-=wjgA-74ddehziVk=XAEMTKswPu1Yw4uaro1R3ibs27ztw@mail.gmail.com>
 <27816.1613085646@warthog.procyon.org.uk>
In-Reply-To: <27816.1613085646@warthog.procyon.org.uk>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 12 Feb 2021 17:05:47 -0800
X-Gmail-Original-Message-ID: <CAHk-=wi68OpbwBm6RCodhNUyg6x8N7vi5ufjRtosQSPy_EYqLA@mail.gmail.com>
Message-ID: <CAHk-=wi68OpbwBm6RCodhNUyg6x8N7vi5ufjRtosQSPy_EYqLA@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.51 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.51 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lAjVk-006sLM-Kn
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
Cc: CIFS <linux-cifs@vger.kernel.org>, "open list:NFS, SUNRPC,
 AND..." <linux-nfs@vger.kernel.org>, Jeff Layton <jlayton@redhat.com>,
 David Wysochanski <dwysocha@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Feb 11, 2021 at 3:21 PM David Howells <dhowells@redhat.com> wrote:
>
> Most of the development discussion took place on IRC and waving snippets of
> code about in pastebin rather than email - the latency of email is just too
> high.  There's not a great deal I can do about that now as I haven't kept IRC
> logs.  I can do that in future if you want.

No, I really don't.

IRC is fine for discussing ideas about how to solve things.

But no, it's not a replacement for actual code review after the fact.

If you think email has too long latency for review, and can't use
public mailing lists and cc the people who are maintainers, then I
simply don't want your patches.

You need to fix your development model. This whole "I need to get
feedback from whoever still uses irc and is active RIGHT NOW" is not a
valid model. It's fine for brainstorming for possible approaches, and
getting ideas, sure.

               Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
