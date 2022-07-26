Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EAA35812DA
	for <lists+v9fs-developer@lfdr.de>; Tue, 26 Jul 2022 14:10:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oGJOV-0000rw-SP; Tue, 26 Jul 2022 12:10:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1oGJON-0000rj-HR
 for v9fs-developer@lists.sourceforge.net; Tue, 26 Jul 2022 12:10:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qE9E//dP4gc/xOOwIwhfrlODHz+ESpUGR+JNi63mXEM=; b=MpBAdpLxTp8+Z2mhgSzOmChaxb
 ECtXgltbqjYpl19COyIYytVo9GtM3OdJ3UjvXa7QRbxI1RyDY8iJXrevtvdHcS0YyzMaWYk+RSHsn
 uaZC/8fkuCSQFTDMiuI5ww2cmPi13OFTPJscCdxOjq3Gn6LO19DWKS5PBZrM8KWT088U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qE9E//dP4gc/xOOwIwhfrlODHz+ESpUGR+JNi63mXEM=; b=HWcqSMKNIFP/K6zDa7SXbTwdVs
 Rl+nE1n6UWGlQvO6lKLK7HTrKBfz8bjpLnnsh/r3Hf1Ax1UNpvkBdgOsFwXwzSnP23CJgxIGUQ93R
 bdyxIjCvfnp53X8zm0Rm6QMy92naZmpfGulZn9kFyhBGrShBSTSzwy9EBkVxlETSkon0=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oGJOH-00AtO8-Tr
 for v9fs-developer@lists.sourceforge.net; Tue, 26 Jul 2022 12:10:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=qE9E//dP4gc/xOOwIwhfrlODHz+ESpUGR+JNi63mXEM=; b=R/anHNFW+YvnZqTxmBZ4X5KCCE
 w9mmbiT/KxL/PY7AkmL+4J7yoizv4Edtk/DEZSvzHXQ6Xrw54Xo3PNT2HWey4a9NVXeBEgb3gCqI0
 bRBGX0oVZCNff5b18jAlCh1Ezapg+LK29rRdb+lF/kb8hnyqKrAoCHWlgCjWc4tYEPaU1zFC8PMis
 MIAlxr03QCdoWtVl20M8VgxXO7WvmzQVE+vuzAldSiXly3gHCWcebF+pNgGlQw+z+sxnHJkkFJ0Z4
 eXL6sbdmk7bdJJwttajxl0psl5eIbnG/87cwkkk3w0l4tPow6I0pveCpRIeHdYDtyO1+a1wKyt84J
 KB5E+7Clr61Bib8Hewb4+R83aUVT9y5ErXdGU4kmC4svF1WTM4+qQvwimac6jqdzN/SM+UAbwQe+0
 nVP8dXFUXIEHRGhxpAds7qb8YJHuwz4zkkP2/+YG6RdcMQhM9KZ6xTb1772rzaLhprYuzqaL9AsJH
 YY5y0bqnKpmcoRJdTfL+r19avlE6JYcgaSjm6/N21miUWAm1HOc1+ASELHezsUzeGcjj0arm0ba/p
 RwUBpPsHY1TLzfZvAyjGKCTt0EUEcJ6XCFLNFACSH1N9FxRiS0SKiSGxFaRr1cVr3M9A7pWuZWq8y
 emuOo1+DxmLee/4PjvDGXexXc4TQFG5YHLOVa1dP8=;
To: asmadeus@codewreck.org, Dmitry Vyukov <dvyukov@google.com>
Date: Tue, 26 Jul 2022 14:09:37 +0200
Message-ID: <2916828.W3qMjvkFlE@silver>
In-Reply-To: <CACT4Y+Yx2MZ9KEX9gfm-LahQE4KaXX=u4RQBuj-1gS57KL0OSw@mail.gmail.com>
References: <000000000000e6917605e48ce2bf@google.com>
 <Yt6DjrMdIhpQmm7V@codewreck.org>
 <CACT4Y+Yx2MZ9KEX9gfm-LahQE4KaXX=u4RQBuj-1gS57KL0OSw@mail.gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Montag, 25. Juli 2022 14:45:08 CEST Dmitry Vyukov wrote:
 > On Mon, 25 Jul 2022 at 13:51, <asmadeus@codewreck.org> wrote: > > Vlastimil
 Babka wrote on Mon, Jul 25, 2022 at 12:15:24PM +0200: > > > On [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1oGJOH-00AtO8-Tr
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
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

On Montag, 25. Juli 2022 14:45:08 CEST Dmitry Vyukov wrote:
> On Mon, 25 Jul 2022 at 13:51, <asmadeus@codewreck.org> wrote:
> > Vlastimil Babka wrote on Mon, Jul 25, 2022 at 12:15:24PM +0200:
> > > On 7/24/22 15:17, syzbot wrote:
> > > > syzbot has bisected this issue to:
> > > > 
> > > > commit 7302e91f39a81a9c2efcf4bc5749d18128366945
> > > > Author: Marco Elver <elver@google.com>
> > > > Date:   Fri Jan 14 22:03:58 2022 +0000
> > > > 
> > > >     mm/slab_common: use WARN() if cache still has objects on destroy
> > > 
> > > Just to state the obvious, bisection pointed to a commit that added the
> > > warning, but the reason for the warning would be that p9 is destroying a
> > > kmem_cache without freeing all the objects there first, and that would
> > > be
> > > true even before the commit.
> > 
> > Probably true from the moment that cache/idr was introduced... I've got
> > a couple of fixes in next but given syzcaller claims that's the tree it
> > was produced on I guess there can be more such leaks.
> > (well, the lines it sent in the backtrace yesterday don't match next,
> > but I wouldn't count on it)
> > 
> > If someone wants to have a look please feel free, I would bet the
> > problem is just that p9_fd_close() doesn't call or does something
> > equivalent to p9_conn_cancel() and there just are some requests that
> > haven't been sent yet when the mount is closed..
> > But I don't have/can/want to take the time to check right now as I
> > consider such a leak harmless enough, someone has to be root or
> > equivalent to do 9p mounts in most cases.
> 
> FWIW with KASAN we have allocation stacks for each heap object. So
> when KASAN is enabled that warning could list all live object
> allocation stacks.

With allocation stack you mean the backtrace/call stack at the point in time 
when the memory originally was acquired?

If the answer is yes, then sure, if someone had a chance to post those 
backtraces, then that would help us to take a closer look at where this leak 
might happen. Otherwise I fear it will end up among those other "lack of 
priority" issues.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
