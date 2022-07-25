Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BA339580029
	for <lists+v9fs-developer@lfdr.de>; Mon, 25 Jul 2022 15:49:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oFySv-000151-1w; Mon, 25 Jul 2022 13:49:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dvyukov@google.com>) id 1oFySu-00014v-7j
 for v9fs-developer@lists.sourceforge.net; Mon, 25 Jul 2022 13:49:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jc/BDHMhK7iVrMHxH2raQUC5msig51Chw85BZlvexog=; b=QLwPQY/cTH3UgPZnNxg1jCz9x3
 WMrT4sFx4iEbfnANyMXnS8vSuPTK8NJCast+8rbk/GeDs+7WDD9L8/4tF20k2oqD5bxzZBU6y23aj
 uyco84lBTJtU/VKYvEQ89h4N4Md5LEE/lt1vQqlD3MishAMSAWug8Of2R7eKHaLAsGk4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jc/BDHMhK7iVrMHxH2raQUC5msig51Chw85BZlvexog=; b=G7Jc7S6un8AW9p7xbxwxS2OIpi
 j3HxRJRAldDdLxyKsOllaeKfuUJNFqUQ5/MW6xLYI4RfL1KfgcXS+icEA/++t6MymmwwshkSPnv4F
 lTMABT0oMLFZUhscuFNCauts+3hcz0qDSy+jxTwN3wFY0dzpMGarVrHbk99xCUlmTai0=;
Received: from mail-wr1-f47.google.com ([209.85.221.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oFySo-00016Z-9c
 for v9fs-developer@lists.sourceforge.net; Mon, 25 Jul 2022 13:49:42 +0000
Received: by mail-wr1-f47.google.com with SMTP id bn9so5173015wrb.9
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 25 Jul 2022 06:49:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jc/BDHMhK7iVrMHxH2raQUC5msig51Chw85BZlvexog=;
 b=d3/PmsviXYCk0itavdxDqkvzp8Kz9cccCIGsW5lkbDT80suAiNOcyPvQwiEya3G4Mf
 e0LrE0W4gpboiQ9zI5/nYBW3ry4+9nQUWZz1VV6DufjOI36YRFkFznXf9NFTGtG9xVLR
 mJNtZGy+xADkT3tKDanfBBdZ5ZFKpsQq/Op/BB4FaABjvB9ZzlIwiaCHh1XJE570mDVq
 /aAyku306M+TRH2XHHNJOxt1kd1UFqhQSJGWI5k0gJStQQliTfMuSzwp1DxmA6/I6wnf
 045ou4K6VM40gyDik9i7VB7HFSavn6ixutQ86mfaCKiTwF7I9uuiMbiYDroAvgzVbo84
 6XXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jc/BDHMhK7iVrMHxH2raQUC5msig51Chw85BZlvexog=;
 b=u2YFl1QU1DqdOrGsKymzL7J+XcM4GsvZ6zdkMHElf5wbd5hvJhZkSha6qq8o5kCPaq
 aYYoR82VK3MUQdz+lrcCLMpDT4IW6y0a9/GeUb086ygLYzbsV0q+A3QfHxg2tDcC1j0l
 5FlvsVIKKPk+g1Q2sVNrKxURUJSEuYmW4yxm/VpcqKsZ0/Eqt/U91r13a/OMKWH+hMfk
 0kq10JrIv20g7nhwBWawMUHLSRts9K7EQNHzZfbLDlZiVdYRd4vADabWURmsGQkgupUW
 vjHzQQeyJ30e07eqrY+A3Rs1ZzUscIh1n2Qa+iQPbAgX7rljPDpN37XXHW8ZdQpZRUoj
 EtMw==
X-Gm-Message-State: AJIora+elNJgysWICbhdQCTiv+OYxrBvZ4kNwcCQdxC4szfZda6IhGDc
 z3HyljMOpzr3HKYxIC0n3nLWa5se/ZqYYf/8BVvy+jzBTW4=
X-Google-Smtp-Source: AGRyM1ttCR4r5EwqnFicWDa0hJroSrq3Kb6EnYgiHUHsvLcqYfg0QWWCCLkJwznDc3Bw24pP9aVgr3kHyU9nkbMlBHw=
X-Received: by 2002:a2e:bd0e:0:b0:25a:88b3:9af6 with SMTP id
 n14-20020a2ebd0e000000b0025a88b39af6mr4397667ljq.363.1658753120669; Mon, 25
 Jul 2022 05:45:20 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000e6917605e48ce2bf@google.com>
 <fb9febe5-00a6-61e9-a2d0-40982f9721a3@suse.cz>
 <Yt6DjrMdIhpQmm7V@codewreck.org>
In-Reply-To: <Yt6DjrMdIhpQmm7V@codewreck.org>
Date: Mon, 25 Jul 2022 14:45:08 +0200
Message-ID: <CACT4Y+Yx2MZ9KEX9gfm-LahQE4KaXX=u4RQBuj-1gS57KL0OSw@mail.gmail.com>
To: asmadeus@codewreck.org
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 25 Jul 2022 at 13:51, <asmadeus@codewreck.org> wrote:
 > > Vlastimil Babka wrote on Mon, Jul 25, 2022 at 12:15:24PM +0200: > > On
 7/24/22 15:17, syzbot wrote: > > > syzbot has bisected this iss [...] 
 Content analysis details:   (-15.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.47 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.47 listed in wl.mailspike.net]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1oFySo-00016Z-9c
Subject: Re: [V9fs-developer] [syzbot] WARNING in p9_client_destroy
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
Cc: lucho@ionkov.net, k.kahurani@gmail.com, elver@google.com,
 syzbot <syzbot+5e28cdb7ebd0f2389ca4@syzkaller.appspotmail.com>,
 ericvh@gmail.com, netdev@vger.kernel.org, linux_oss@crudebyte.com,
 syzkaller-bugs@googlegroups.com, hdanton@sina.com,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 edumazet@google.com, rientjes@google.com, kuba@kernel.org, pabeni@redhat.com,
 torvalds@linux-foundation.org, davem@davemloft.net,
 Vlastimil Babka <vbabka@suse.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, 25 Jul 2022 at 13:51, <asmadeus@codewreck.org> wrote:
>
> Vlastimil Babka wrote on Mon, Jul 25, 2022 at 12:15:24PM +0200:
> > On 7/24/22 15:17, syzbot wrote:
> > > syzbot has bisected this issue to:
> > >
> > > commit 7302e91f39a81a9c2efcf4bc5749d18128366945
> > > Author: Marco Elver <elver@google.com>
> > > Date:   Fri Jan 14 22:03:58 2022 +0000
> > >
> > >     mm/slab_common: use WARN() if cache still has objects on destroy
> >
> > Just to state the obvious, bisection pointed to a commit that added the
> > warning, but the reason for the warning would be that p9 is destroying a
> > kmem_cache without freeing all the objects there first, and that would be
> > true even before the commit.
>
> Probably true from the moment that cache/idr was introduced... I've got
> a couple of fixes in next but given syzcaller claims that's the tree it
> was produced on I guess there can be more such leaks.
> (well, the lines it sent in the backtrace yesterday don't match next,
> but I wouldn't count on it)
>
> If someone wants to have a look please feel free, I would bet the
> problem is just that p9_fd_close() doesn't call or does something
> equivalent to p9_conn_cancel() and there just are some requests that
> haven't been sent yet when the mount is closed..
> But I don't have/can/want to take the time to check right now as I
> consider such a leak harmless enough, someone has to be root or
> equivalent to do 9p mounts in most cases.

FWIW with KASAN we have allocation stacks for each heap object. So
when KASAN is enabled that warning could list all live object
allocation stacks.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
