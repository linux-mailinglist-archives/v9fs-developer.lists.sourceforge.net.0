Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 67AC0585016
	for <lists+v9fs-developer@lfdr.de>; Fri, 29 Jul 2022 14:31:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oHP9I-0006kh-0B; Fri, 29 Jul 2022 12:31:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dvyukov@google.com>) id 1oHP9G-0006ka-9V
 for v9fs-developer@lists.sourceforge.net; Fri, 29 Jul 2022 12:31:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UscPiVc3W69u2SDEZgLhh627QT22j/EkeFjDm8ewhDU=; b=e5coMELaXBepFFsMWBxlm9nOnR
 uxgy9vDaMni6JEJ12sMSVR4CT3UiVuYfxN9wKqCahddTTaTnko0bhCr3oWJlIm3zal0qdYEFnxC7k
 hHAotdhZPwGxOcH5yOvwhWFh6ZI6JFyA1oT4jyGX50Kwzphz4fueQI4feXSV6bVRNQhw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UscPiVc3W69u2SDEZgLhh627QT22j/EkeFjDm8ewhDU=; b=ERIWOr2yKtKhnUkYx5ttfWIwh1
 om0QsOvJ2qh1cpWQtZyVnx/2kyBh5YNsQdnLoO/UmDIn/q2xVApkQ4MDstComn9WfOQaGDz2riFiH
 big8XNNHvH0b9QWBJvrddtpUVijdN8HJW/7bMWk+Qlz/O9Wib4LHxqOUJRuiprh4qrTM=;
Received: from mail-lf1-f53.google.com ([209.85.167.53])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oHP9E-00DxjZ-CC
 for v9fs-developer@lists.sourceforge.net; Fri, 29 Jul 2022 12:31:20 +0000
Received: by mail-lf1-f53.google.com with SMTP id t17so7166575lfk.0
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 29 Jul 2022 05:31:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UscPiVc3W69u2SDEZgLhh627QT22j/EkeFjDm8ewhDU=;
 b=nJrpxtj3/Yr1byjkae9e+eAEwtAZS6cQLSq9Wf/FbOweTm1lCQVUsPbRKq3KsquHix
 Ahx76WP2GWkQOvWSzNFy/ojyGd9Wrx02NkjPklNTCGLCJEyvOFX2lCKqmtSGsrSciIga
 juEvUdPxt4sxwKHufQCBxHAQGnMZw0p0eyn1K88qjYMCqpIC8Hj5RFCIHsOW7O6qvkuU
 6U2SdnxZg83UIY3mAlDL62txLD3y11abWwFFIGB9Klz0ZvA0NHYkD7Lmo1AXFwWl4L10
 LCF2cCFW4VSrlv8DHIP2JK3k43qO7RHanKnUtmINBDajIStTnQ7okAWfcVh35ThcWcQl
 Hrbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UscPiVc3W69u2SDEZgLhh627QT22j/EkeFjDm8ewhDU=;
 b=OSFGzxuemADDhSECR/ysyaeTEbmrCT7htBy5MoVho/0lpgA2eh2GpWFM3XBofXC2/w
 WeUHOngVcHDw7ulktSpf3iptD7+nvcje0ffYucVNXAkjzBS+rNkGLp2RlcxlI6xKZvDX
 bbhj1EPg/QtLsmQMhHKgvnvwKdsdHWmsBPJ44A8q2TVFk2fTIS/GMuRRu/vpTQIo1LiV
 4l4ZQQNpPZvzEF4MLQa+b8yMuTii/W/B13DJVG3PaDvxI/Jzw1P3XjJ+TNJGC+LgPHAN
 oy/VBmVar7pDHgK/luY31QknlfpJMgitsU+tGdkacrwA5TCXyHqllPAiEWRMzLlJctkv
 l/eQ==
X-Gm-Message-State: AJIora8O34VqNsZOxWYDzKVT+fNVFdH7dHdglZdzvwGD+n96zHaXeyrV
 YlzOMoP0guqJVXwLzwl2zggEuNJVQjBx5UAoab+v4g==
X-Google-Smtp-Source: AA6agR62HeE51l5IAK04JRZwMFJ1wYjG83cpBLDmLAJjptPk6vF7HAk3w0wXXYaTfDZ+/dbgsxR4PZ99SvySsvQiBoI=
X-Received: by 2002:a05:6512:1093:b0:48a:7c08:8d29 with SMTP id
 j19-20020a056512109300b0048a7c088d29mr1161026lfg.540.1659097873241; Fri, 29
 Jul 2022 05:31:13 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000e6917605e48ce2bf@google.com>
 <Yt6DjrMdIhpQmm7V@codewreck.org>
 <CACT4Y+Yx2MZ9KEX9gfm-LahQE4KaXX=u4RQBuj-1gS57KL0OSw@mail.gmail.com>
 <2916828.W3qMjvkFlE@silver>
In-Reply-To: <2916828.W3qMjvkFlE@silver>
Date: Fri, 29 Jul 2022 14:31:01 +0200
Message-ID: <CACT4Y+Ycz2a2tuPs4R2WS3Gs+rvLBrusamCq3kQ3wj8R+=rX6w@mail.gmail.com>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 26 Jul 2022 at 14:10,
 Christian Schoenebeck <linux_oss@crudebyte.com>
 wrote: > > On Montag, 25. Juli 2022 14:45:08 CEST Dmitry Vyukov wrote: >
 > On Mon, 25 Jul 2022 at 13:51, <asmadeus@codewre [...] 
 Content analysis details:   (-15.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 welcome-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.53 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.53 listed in list.dnswl.org]
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1oHP9E-00DxjZ-CC
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
 ericvh@gmail.com, netdev@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 hdanton@sina.com, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, edumazet@google.com, rientjes@google.com,
 kuba@kernel.org, pabeni@redhat.com, torvalds@linux-foundation.org,
 davem@davemloft.net, Vlastimil Babka <vbabka@suse.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, 26 Jul 2022 at 14:10, Christian Schoenebeck
<linux_oss@crudebyte.com> wrote:
>
> On Montag, 25. Juli 2022 14:45:08 CEST Dmitry Vyukov wrote:
> > On Mon, 25 Jul 2022 at 13:51, <asmadeus@codewreck.org> wrote:
> > > Vlastimil Babka wrote on Mon, Jul 25, 2022 at 12:15:24PM +0200:
> > > > On 7/24/22 15:17, syzbot wrote:
> > > > > syzbot has bisected this issue to:
> > > > >
> > > > > commit 7302e91f39a81a9c2efcf4bc5749d18128366945
> > > > > Author: Marco Elver <elver@google.com>
> > > > > Date:   Fri Jan 14 22:03:58 2022 +0000
> > > > >
> > > > >     mm/slab_common: use WARN() if cache still has objects on destroy
> > > >
> > > > Just to state the obvious, bisection pointed to a commit that added the
> > > > warning, but the reason for the warning would be that p9 is destroying a
> > > > kmem_cache without freeing all the objects there first, and that would
> > > > be
> > > > true even before the commit.
> > >
> > > Probably true from the moment that cache/idr was introduced... I've got
> > > a couple of fixes in next but given syzcaller claims that's the tree it
> > > was produced on I guess there can be more such leaks.
> > > (well, the lines it sent in the backtrace yesterday don't match next,
> > > but I wouldn't count on it)
> > >
> > > If someone wants to have a look please feel free, I would bet the
> > > problem is just that p9_fd_close() doesn't call or does something
> > > equivalent to p9_conn_cancel() and there just are some requests that
> > > haven't been sent yet when the mount is closed..
> > > But I don't have/can/want to take the time to check right now as I
> > > consider such a leak harmless enough, someone has to be root or
> > > equivalent to do 9p mounts in most cases.
> >
> > FWIW with KASAN we have allocation stacks for each heap object. So
> > when KASAN is enabled that warning could list all live object
> > allocation stacks.
>
> With allocation stack you mean the backtrace/call stack at the point in time
> when the memory originally was acquired?
>
> If the answer is yes, then sure, if someone had a chance to post those
> backtraces, then that would help us to take a closer look at where this leak
> might happen. Otherwise I fear it will end up among those other "lack of
> priority" issues.

Yes, I meant providing allocation stacks for leaked objects.
Filed https://bugzilla.kernel.org/show_bug.cgi?id=216306 for this feature.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
