Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A05462F5E
	for <lists+v9fs-developer@lfdr.de>; Tue, 30 Nov 2021 10:15:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mrzEf-0005lN-Si; Tue, 30 Nov 2021 09:15:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dvyukov@google.com>) id 1mrzEd-0005kt-Nn
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Nov 2021 09:15:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=B4qZdUSE86gK9ls4tT+kWb4lA3j8/3NvJT2M9hMeA5A=; b=fOcpAXih7vgmsNkRqK3CwCM4Im
 OOG6suTc7905UyXnfOZlaMkZuVDV1SwSQS6qUa/MW70lMRAjqHjPHAB7CWluN8dFNwXC+byEW3hRP
 03oAcNJmE9h/qnI+RLvmWZ6Ey+11U5ljS0ITu4MYJOmRTZaXs979uIButowaxhaa4vGI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=B4qZdUSE86gK9ls4tT+kWb4lA3j8/3NvJT2M9hMeA5A=; b=GPepXNGFE33gyT689/dkAiYpj1
 coRDyBdoxBZ60/BxTGn4TtZF4Xx1s+YDuKhUEarAl2M0jxv7Jj0eQKOOLlhl51PNDGLeIluvB+HDz
 uv+IozSudEnZhv6QicdDVjbvKlbUuj1aiTAcrYo/nogCVrylvRkT/ZS45fYTU7VsM8rs=;
Received: from mail-yb1-f178.google.com ([209.85.219.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mrzEY-00018s-GV
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Nov 2021 09:15:36 +0000
Received: by mail-yb1-f178.google.com with SMTP id v203so50662086ybe.6
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 30 Nov 2021 01:15:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=B4qZdUSE86gK9ls4tT+kWb4lA3j8/3NvJT2M9hMeA5A=;
 b=GUzeZWvAgG3ZKcVKqly+MRODZSpjgYM5M1CRS5zBnN19S6ka2SqjPadg2rAbAFsjFs
 K6vzK/OeGan3n2QZDDCGFignHVuCn1NlAHEbzp1ZPzMS6O0636fTPzKPDuzfPqny27I9
 4QxvKAOaKFWyzzPGKikBmX6hnL9UMlQyhmrwyOScgYv7+ia054rVaZzY0qet93S6jn8G
 P930PIoA0LQBJimrk695ZTmKy5syuPsa6lXqo+/O8nWWE/0aCfDYs7rTNmA1pum/Tl/P
 pK93V+xkTW68+T2Upqu0wRDBnFuqZSxQBqxhw/wAHdVEBRX+AQsu2YenFjJ6nCDsUA5C
 +bCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B4qZdUSE86gK9ls4tT+kWb4lA3j8/3NvJT2M9hMeA5A=;
 b=jjfy9PuszyXdQVuL+UvcmKm/+i3MVXJNVfXIVH8m2zSdH8rkgV5/I5oPmyZdv1sAgU
 KfuzEAbh5B+ymQfIEyOQ8ME7LN6e2pRWzBAVRHFrB1kFj5Qef7cvXMC9lwm0aS6wXNT/
 Mr7GPbByLPsHJ7WJZRCUtwDo9CUpI1UEHwJ7LL+/OjxLNmO4CchqplDxA000OJ4vRHLf
 uDEeTTyJMzqLVMWWsXuqSSJz4T2h/Z4zPMz0C1BN8bBSjGcPrCTf8jjNg+/cNlbLPqLV
 DIQB9he+FPL54UoWWoR07wPwGEElJd4BXodW6rsjDLT/iE4oqeWgCWT9KZk8ECr/aRjE
 Eojg==
X-Gm-Message-State: AOAM533sAZqf9xzue2jRhHmdFli6nQ9T0O0KsDlUtPymiSfDcLgvlzqP
 eFtMR+ft2fNwL8YuIpdIU15tL0eDsosDRLn2OFzfXss8Zfs=
X-Google-Smtp-Source: ABdhPJzyLkWM+jha1iWahdzcPZLwlrso13oOstwG2wOjxhyS221tr8VODSYd2v+jMzyLy43T6nf4GAls0QgZnGYCzvE=
X-Received: by 2002:a05:6830:1356:: with SMTP id
 r22mr47891046otq.196.1638259905180; 
 Tue, 30 Nov 2021 00:11:45 -0800 (PST)
MIME-Version: 1.0
References: <20211129114434.3637938-1-brauner@kernel.org>
 <YaTVWtjhm4+2FI33@codewreck.org> <20211130074955.GR6514@kadam>
In-Reply-To: <20211130074955.GR6514@kadam>
Date: Tue, 30 Nov 2021 09:11:33 +0100
Message-ID: <CACT4Y+bqJZNXyG0x=HieW26WdAmAt=5o4M7NgCa_5UR-4jdN3w@mail.gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 30 Nov 2021 at 08:50,
 Dan Carpenter <dan.carpenter@oracle.com>
 wrote: > > On Mon, Nov 29, 2021 at 10:27:54PM +0900, Dominique Martinet wrote:
 > > Copying uninitialized value isn't a problem, a [...] 
 Content analysis details:   (-15.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.178 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.178 listed in wl.mailspike.net]
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1mrzEY-00018s-GV
Subject: Re: [V9fs-developer] [PATCH] 9p: only copy valid iattrs in 9P2000.L
 setattr implementation
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
From: Dmitry Vyukov via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Christian Brauner <brauner@kernel.org>,
 Eric Van Hensbergen <ericvh@gmail.com>, syzkaller-bugs@googlegroups.com,
 syzbot+dfac92a50024b54acaa4@syzkaller.appspotmail.com,
 v9fs-developer@lists.sourceforge.net,
 Christian Brauner <christian.brauner@ubuntu.com>, stable@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, 30 Nov 2021 at 08:50, Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Mon, Nov 29, 2021 at 10:27:54PM +0900, Dominique Martinet wrote:
> > Copying uninitialized value isn't a problem, and is usually faster than
> > checking before every copy, it's using uninitialized values later down
> > the road that is bad.
>
> These days more and more stuff like static analysis and UBSan (runtime
> checker for syzkaller/syzbot) detects when we copy uninitialized values.
> So even when the value is not used, just loading it can trigger a build
> or runtime warning.

KMSAN won't report loads of unint data (don't know about static analysis).
It was a design requirement for MSan. People do it a lot. Even use
units in competitions and then discard. KMSAN only reports the final
uses of unints (or derived data), if any.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
