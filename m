Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C19F3428713
	for <lists+v9fs-developer@lfdr.de>; Mon, 11 Oct 2021 08:54:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mZpD7-0005KO-AE; Mon, 11 Oct 2021 06:54:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <asmadeus@codewreck.org>) id 1mZpD6-0005KG-5j
 for v9fs-developer@lists.sourceforge.net; Mon, 11 Oct 2021 06:54:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q1XTrDK/BGDzKbFG2dhkm+kOk216JpX5sdw/shtNSHg=; b=ELMax/VnpZlOpcke/LBRgr/85U
 KiWdWTxs804eyv6lrzgtXkddqwaCvIjlnWjnZVssjL97H4vzqsjQ4m5P8chKqrYKndZGqliuWGReb
 22DOryeErIv5IqIrY5QM1t8Bb+qIO+87VucEPIIb2fcdSSqpBxMGpIMZxQhvT0fLPd3g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Q1XTrDK/BGDzKbFG2dhkm+kOk216JpX5sdw/shtNSHg=; b=h7VEpN5jLuwpDKdzav1XPUgrlT
 ld9wCdwwLV2Cbu//L8bOKSpxLCWHPULkmri6ud3DiL7pAY+FHT67Ta7oidCJN8WFr4R9xbMVxhL2D
 c8zXnpgMBZxJDhfuJKg/gYGzHGSIba7owB7dUSkGx9iIwa67AYmu6tk+ClTnBr+pddWU=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mZpD1-001zNT-2S
 for v9fs-developer@lists.sourceforge.net; Mon, 11 Oct 2021 06:54:56 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 0C8F9C024; Mon, 11 Oct 2021 08:54:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1633935278; bh=Q1XTrDK/BGDzKbFG2dhkm+kOk216JpX5sdw/shtNSHg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p7VOLUjlRkextHPaWBWa/XwOyDowqLLVTFQd+U1fAS6xSwCiFA7+i8s/00UK0Gdgj
 ubruoKaMj6Tf43FQ7LmxZ91yizpCxOEN4qnzOX2uAfSBiyLqpXES2rgQvNm2O+sbRq
 1r0vTOHE7JP4ZZEr6a5Li2T2kd9OIBjgPgWIDurpjhMWymDPfRs8Vg/5SIuRv7aIvn
 g1CItaQQGbrUVOw+FLZDE6i0YlIQ/w5nezaUZZ2Y52gQ62nHIVmi8yAn9J9G/5Im+S
 HWn8Y50uVc6S/F5JC66mzsuH005eVNdew3TO9wz1TAljMVVJCp2P3vI0fnSJOLbzl+
 8cn+fx3KOwqnQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id E74C1C01F;
 Mon, 11 Oct 2021 08:54:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1633935277; bh=Q1XTrDK/BGDzKbFG2dhkm+kOk216JpX5sdw/shtNSHg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vxZie6Il7PBWA/8/3k5PO8RyJLY/2/wefoagBL2AmYP/VTjV79tFiipXxOpO+2aM6
 VDyT+Ue4rMk2pZ/5C7sq3Mo5CLqqmFtBw4SyFcZb05SBBUtD/PBEyEwPpDLOjV75vu
 YYN67GfHLfzLWknJ9QfitbZvapIyq/q3Az5bZbULMG1udrWc4BSKwq+EXHkWaM4IS4
 njNdyVzzz2iqBUCU7mIBDpX+oMmXAS1cBOLe3gTlCiY/kwwzw2Nmo1VbcB+Z41pPjD
 /44JElbQ0NyzP+lnYjHdyJqiWYNiAkd7ALuc5cZ32EpllbOSnG1hapv5E6KB2NKAiK
 5lxWBc+axfzHA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id f827bec5;
 Mon, 11 Oct 2021 06:54:30 +0000 (UTC)
Date: Mon, 11 Oct 2021 15:54:15 +0900
From: asmadeus@codewreck.org
To: Dmitry Vyukov <dvyukov@google.com>
Message-ID: <YWPfl8FFI5uKX499@codewreck.org>
References: <000000000000baddc805cdf928c3@google.com>
 <YWKmBWfBS3oshQ/z@codewreck.org>
 <CACT4Y+bqD=EkkQB6hm+FVWVraDBChnRgqViLTqvmVrVM=1gH+w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACT4Y+bqD=EkkQB6hm+FVWVraDBChnRgqViLTqvmVrVM=1gH+w@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Thanks for the reply, Dmitry Vyukov wrote on Mon, Oct 11,
 2021 at 07:56:05AM +0200: > > would be 'len' in p9pdu_vreadf, which has to
 be set as far as I can understand: > > > uint16_t len; > > > > > > errcode
 = p9pdu_readf( [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1mZpD1-001zNT-2S
Subject: Re: [V9fs-developer] [syzbot] KMSAN: uninit-value in p9pdu_readf
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
Cc: lucho@ionkov.net,
 syzbot <syzbot+06472778c97ed94af66d@syzkaller.appspotmail.com>,
 ericvh@gmail.com, netdev@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, glider@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Thanks for the reply,

Dmitry Vyukov wrote on Mon, Oct 11, 2021 at 07:56:05AM +0200:
> > would be 'len' in p9pdu_vreadf, which has to be set as far as I can understand:
> > > uint16_t len;
> > >
> > > errcode = p9pdu_readf(pdu, proto_version,
> > >                                 "w", &len);
> > > if (errcode)
> > >         break;
> > >
> > > *sptr = kmalloc(len + 1, GFP_NOFS);
> >
> > with relevant part of p9pdu_readf being:
> > > case 'w':{
> > >                int16_t *val = va_arg(ap, int16_t *);
> > >                __le16 le_val;
> > >                if (pdu_read(pdu, &le_val, sizeof(le_val))) {
> > >                        errcode = -EFAULT;
> > >                        break;
> > >                }
> > >                *val = le16_to_cpu(le_val);
> > >        }
> > > ...
> > > return errcode;
> >
> > e.g. either len or errcode should be set...
> >
> > But:
> > > Local variable ----ecode@p9_check_errors created at:
> > >  p9_check_errors+0x68/0xb90 net/9p/client.c:506
> > >  p9_client_rpc+0xd90/0x1410 net/9p/client.c:801
> >
> > is something totally different, p9_client_rpc happens before the
> > p9pdu_readf call in p9_client_stat, and ecode is local to
> > p9_check_errors, I don't see how it could get that far.
> >
> > Note that inspecting p9_check_errors manually, there is a case where
> > ecode is returned (indirectly through err = -ecode) without being
> > initialized,
> 
> Does this connect both stacks? So the uinit is ecode, is it used in
> p9pdu_vreadf? If yes, then that's what KMSAN reported.

Hm...
Assuming that's the uninit, it'd have been propagated as the return
value as req = p9_client_rpc; passed the IS_ERR(req) check as not an
error, then passed to p9pdu_readf(&req->rc (later 'pdu')...)
That would then try to read some undefined address in pdu_read() as
memcpy(data, &pdu->sdata[pdu->offset], len)
and returning another undefined value as
sizeof(__le16) - min(pdu->size - pdu->offset, __le16)

Here magic should happen that makes this neither a success (would set
*val e.g. len in the kmalloc line that complains) or an error (would set
errcode e.g. p9pdu_vreadf() would return before reaching that line)

I guess with undefineds anything can happen and this is a valid link?


I would have assumed kmsan checks would fail sooner but I don't see what
else it could be.


> > so I will send a patch for that at least, but I have no
> > idea if that is what has been reported and it should be trivial to
> > reproduce so I do not see why syzbot does not have a reproducer -- it
> > retries running the last program that triggered the error before sending
> > the report, right?
> 
> Yes.

Ok, I guess there are conditions on the undefined value to reach this
check down the road, even if the undefined return itself should be
always reproducible.

Either way Pavel Skripkin reached the same conclusion as me at roughly
the same time so I'll just go with it.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
