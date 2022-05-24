Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C6053253E
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 May 2022 10:31:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ntPwY-0006Rk-5L; Tue, 24 May 2022 08:31:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <nikolay@oldum.net>) id 1ntPwW-0006Qx-W8
 for v9fs-developer@lists.sourceforge.net; Tue, 24 May 2022 08:31:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1DVPXn15WSztRa7QeKuj+MvlXHX+oKVxbLWvLi70LEE=; b=PhXYSx5cYiUXIu15C/Nf6bHKrV
 EAKs4YaM1wHoehxQ8VwVBDOgfBKvFt9ktFklBKsQ3ZfKleA/QO4ZNGxgR45I4jugUEYcWQdk+Bu2t
 PnecnlO4t2ZmA7ZUhV5XlDebD5IznFV37Z03rypOTiS8QTQIO0GeGf1u8I/Amw8xLWzw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1DVPXn15WSztRa7QeKuj+MvlXHX+oKVxbLWvLi70LEE=; b=iq7SdVwIp9JO+VH83GZcu+hnkf
 hSx9unAb64kHQtDvCDYIr+4bA/QietTvHZE8UqGZ9277u0a1ocL/PavauHFe3skWvj1fRkklKinUG
 JYEz4Jtkjq+fpBSROiC8FQ3meMD6ouMek7ga9/DizfTBzTQGvcIIuq1+FC9RGwyX6NkM=;
Received: from 86-87-34-132.fixed.kpn.net ([86.87.34.132] helo=mail.oldum.net)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1ntPwS-004Rys-6a
 for v9fs-developer@lists.sourceforge.net; Tue, 24 May 2022 08:31:04 +0000
Received: from [10.1.0.200] (unknown [10.1.0.200])
 by mail.oldum.net (Postfix) with ESMTPA id 46BFAA7531;
 Tue, 24 May 2022 08:10:36 +0000 (UTC)
Message-ID: <2380b79f721caf9e6b99aa680b9b29c76fd4e2f4.camel@oldum.net>
From: Nikolay Kichukov <nikolay@oldum.net>
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Tue, 24 May 2022 10:10:31 +0200
In-Reply-To: <Ye6IaIqQcwAKv0vb@codewreck.org>
References: <cover.1640870037.git.linux_oss@crudebyte.com>
 <29a54acefd1c37d9612613d5275e4bf51e62a704.camel@oldum.net>
 <1835287.xbJIPCv9Fc@silver>
 <5111aae45d30df13e42073b0af4f16caf9bc79f0.camel@oldum.net>
 <Ye6IaIqQcwAKv0vb@codewreck.org>
User-Agent: Evolution 3.44.1 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello Dominique, On Mon, 2022-01-24 at 20:07 +0900, Dominique
 Martinet wrote: > Nikolay Kichukov wrote on Mon, Jan 24, 2022 at 11:21:08AM
 +0100: > > It works, sorry for overlooking the 'known limitations' in the
 first [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1ntPwS-004Rys-6a
Subject: Re: [V9fs-developer] [PATCH v4 00/12] remove msize limit in virtio
 transport
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, Christian Schoenebeck <linux_oss@crudebyte.com>,
 Greg Kurz <groug@kaod.org>, v9fs-developer@lists.sourceforge.net,
 Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hello Dominique,

On Mon, 2022-01-24 at 20:07 +0900, Dominique Martinet wrote:
> Nikolay Kichukov wrote on Mon, Jan 24, 2022 at 11:21:08AM +0100:
> > It works, sorry for overlooking the 'known limitations' in the first
> > place. When do we expect these patches to be merged upstream?
> 
> We're just starting a new development cycle for 5.18 while 5.17 is
> stabilizing, so this mostly depends on the ability to check if a msize
> given in parameter is valid as described in the first "STILL TO DO"
> point listed in the cover letter.
> 
> I personally would be happy considering this series for this cycle
> with
> just a max msize of 4MB-8k and leave that further bump for later if
> we're sure qemu will handle it.
> We're still seeing a boost for that and the smaller buffers for small
> messages will benefit all transport types, so that would get in in
> roughly two months for 5.18-rc1, then another two months for 5.18 to
> actually be released and start hitting production code.
> 
> 
> I'm not sure when exactly but I'll run some tests with it as well and
> redo a proper code review within the next few weeks, so we can get
> this
> in -next for a little while before the merge window.
> 

Did you make it into 5.18? I see it just got released...


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
