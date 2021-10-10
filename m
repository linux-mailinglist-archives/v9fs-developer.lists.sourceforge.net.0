Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F0C428011
	for <lists+v9fs-developer@lfdr.de>; Sun, 10 Oct 2021 10:37:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mZUKK-0004KZ-GR; Sun, 10 Oct 2021 08:37:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@codewreck.org>) id 1mZUKF-0004KM-Jl
 for v9fs-developer@lists.sourceforge.net; Sun, 10 Oct 2021 08:36:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PygQilpGLXQp/m5q/cQ5cIzutlJQqkg4SJFesAi9P8M=; b=BzcQND3D4+FGgRoqdx6mkYZ0OI
 WJfXyI2+Fd68ZTPkwnDzfzdFZ/Q8kUWSTNhdvsffVplNx+oNsbpv+Jp+LepmgP1b0za2KepzN5/5o
 /i2H7gcjG4OK7eAwY+2is6DBEhuUhCMyMdcBZRfPuCbyB/LUyWK8G6cPL95ZVAMh7Drw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PygQilpGLXQp/m5q/cQ5cIzutlJQqkg4SJFesAi9P8M=; b=OrSwrrJZibEqODi1H+jzawjnrQ
 TxrLO8ZMq8mtGVJ27DJ4yFGGusfdWxJyceAD7ADUWNN4Or9wqgfMJGlmjKUaI8XdSG8nKp1TwdRK8
 ijCWj88jc5/XiGqOrLCoqQZyFKZ/YdQfG1z74IdPYIfTOLT5//DqDIUGQw9T2u1ufITY=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mZUKC-00080u-TZ
 for v9fs-developer@lists.sourceforge.net; Sun, 10 Oct 2021 08:36:55 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id D4ACBC023; Sun, 10 Oct 2021 10:36:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1633855003; bh=PygQilpGLXQp/m5q/cQ5cIzutlJQqkg4SJFesAi9P8M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YZJxMa5/7JNeCyd0S8Fm3XyI59WOFsyPlo9o2wGxHSqP9WGQYJ/SrATCy1QtsVlwj
 FQWj7adpuKzkit//dY7FO31RRagywr0LLYB+BrxNHKLObxBm4HQxuoU8EORxtmqyvB
 w7XfAHZTdQM/QsFhaUe6nqajDDQ46u81ePrhdMnkjmMIZdl0rR2PJoErI2Pd0CNfKE
 upAO8W0tJjUs2KqGUiNeF2fMrDTkRjJJRsLFpWCEzPtgMMEqx98tBCrg3bIExEN9hb
 QAlB0F6dbC7iiJUdXVsELVH6rqON6LArRZqNuiPWXPB8p64ctqCHHAfZl8aKA0TDSJ
 ncWNUTThWRqHg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: **
X-Spam-Status: No, score=2.5 required=5.0 tests=SORTED_RECIPS,
 UNPARSEABLE_RELAY autolearn=no version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 29F4AC01F;
 Sun, 10 Oct 2021 10:36:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1633855003; bh=PygQilpGLXQp/m5q/cQ5cIzutlJQqkg4SJFesAi9P8M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YZJxMa5/7JNeCyd0S8Fm3XyI59WOFsyPlo9o2wGxHSqP9WGQYJ/SrATCy1QtsVlwj
 FQWj7adpuKzkit//dY7FO31RRagywr0LLYB+BrxNHKLObxBm4HQxuoU8EORxtmqyvB
 w7XfAHZTdQM/QsFhaUe6nqajDDQ46u81ePrhdMnkjmMIZdl0rR2PJoErI2Pd0CNfKE
 upAO8W0tJjUs2KqGUiNeF2fMrDTkRjJJRsLFpWCEzPtgMMEqx98tBCrg3bIExEN9hb
 QAlB0F6dbC7iiJUdXVsELVH6rqON6LArRZqNuiPWXPB8p64ctqCHHAfZl8aKA0TDSJ
 ncWNUTThWRqHg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 1d23b4bb;
 Sun, 10 Oct 2021 08:36:36 +0000 (UTC)
Date: Sun, 10 Oct 2021 17:36:21 +0900
From: asmadeus@codewreck.org
To: syzbot <syzbot+06472778c97ed94af66d@syzkaller.appspotmail.com>
Message-ID: <YWKmBWfBS3oshQ/z@codewreck.org>
References: <000000000000baddc805cdf928c3@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000000000000baddc805cdf928c3@google.com>
X-Spam-Score: 2.3 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Question for people who know about KMSAN: which of the
 backtrace
 or the 'Local variable' message should I trust? syzbot wrote on Sat, Oct
 09, 2021 at 10:48:17PM -0700: >
 =====================================================
 > BUG: KMSAN: uninit-value in p9pdu_vreadf net/9p/protocol.c:147 [inline]
 > BUG: KMSAN: u [...] 
 Content analysis details:   (2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
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
X-Headers-End: 1mZUKC-00080u-TZ
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
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 glider@google.com, v9fs-developer@lists.sourceforge.net, kuba@kernel.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Question for people who know about KMSAN: which of the backtrace or the
'Local variable' message should I trust?

syzbot wrote on Sat, Oct 09, 2021 at 10:48:17PM -0700:
> =====================================================
> BUG: KMSAN: uninit-value in p9pdu_vreadf net/9p/protocol.c:147 [inline]
> BUG: KMSAN: uninit-value in p9pdu_readf+0x46cf/0x4fc0 net/9p/protocol.c:526
>  p9pdu_vreadf net/9p/protocol.c:147 [inline]
>  p9pdu_readf+0x46cf/0x4fc0 net/9p/protocol.c:526
>  p9pdu_vreadf net/9p/protocol.c:198 [inline]
>  p9pdu_readf+0x2080/0x4fc0 net/9p/protocol.c:526
>  p9_client_stat+0x2b3/0x710 net/9p/client.c:1724
>  v9fs_mount+0xc14/0x12c0 fs/9p/vfs_super.c:170

would be 'len' in p9pdu_vreadf, which has to be set as far as I can understand:
> uint16_t len;
> 
> errcode = p9pdu_readf(pdu, proto_version,
>                                 "w", &len);
> if (errcode)
>         break;
> 
> *sptr = kmalloc(len + 1, GFP_NOFS);

with relevant part of p9pdu_readf being:
> case 'w':{
>                int16_t *val = va_arg(ap, int16_t *);
>                __le16 le_val;
>                if (pdu_read(pdu, &le_val, sizeof(le_val))) {
>                        errcode = -EFAULT;
>                        break;
>                }
>                *val = le16_to_cpu(le_val);
>        }
> ...
> return errcode;

e.g. either len or errcode should be set...

But:
> Local variable ----ecode@p9_check_errors created at:
>  p9_check_errors+0x68/0xb90 net/9p/client.c:506
>  p9_client_rpc+0xd90/0x1410 net/9p/client.c:801

is something totally different, p9_client_rpc happens before the
p9pdu_readf call in p9_client_stat, and ecode is local to
p9_check_errors, I don't see how it could get that far.

Note that inspecting p9_check_errors manually, there is a case where
ecode is returned (indirectly through err = -ecode) without being
initialized, so I will send a patch for that at least, but I have no
idea if that is what has been reported and it should be trivial to
reproduce so I do not see why syzbot does not have a reproducer -- it
retries running the last program that triggered the error before sending
the report, right?

-- 
Dominique Martinet | Asmadeus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
