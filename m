Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9351F497E5F
	for <lists+v9fs-developer@lfdr.de>; Mon, 24 Jan 2022 12:57:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nBxyq-0002T8-1V; Mon, 24 Jan 2022 11:57:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1nBxyo-0002Ia-Qi
 for v9fs-developer@lists.sourceforge.net; Mon, 24 Jan 2022 11:57:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PaRHB0N2VyP/cPc04W5opSXEJ069a6Jl4lq7u/k4wcQ=; b=K6kry/B2QxNR4HPIB+yxsfdZrl
 rbFUBalgbTwItp2dQXWrfTDrsJFVsEUlfZPs45ZMTqVjmeKD2jPpimOKf5uMv9HTwZ+06H+VwhWoE
 nlr3qlE4/jnqFfkQNA/1E+2cbZBcUeyh3BBBOCOUBDr7gGCknHBfBqrWMkuaYnpVLbdI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PaRHB0N2VyP/cPc04W5opSXEJ069a6Jl4lq7u/k4wcQ=; b=BsUILrG0vbeCbf1PWLLVA5cP+i
 cbh2CVGjVsrR6xT9jsTcET9Tglji0LQ4HK0CoeP3g0OTbIdNT9nUBkM5f9SJdcZ6AOFhhMLn434dy
 pUPlgz9y7z7hsgUqbWVYu9PiKW8NlsB5mRMTjXLqIcixE6SSmSwhXY6Gwl0Vi5t2VIu0=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nBxyj-00AN4l-NB
 for v9fs-developer@lists.sourceforge.net; Mon, 24 Jan 2022 11:57:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=PaRHB0N2VyP/cPc04W5opSXEJ069a6Jl4lq7u/k4wcQ=; b=RSIveJ6x/hIAp7y/bt3fxnFbs4
 DRl4Y93odukaOEf82Wo5t4wGXQ+fpasG8gXPez6/q8240Vb9eEfQqxQDUtipE5TmHFKzijFFsqh5B
 4b2Z7kL0g8rJm0X01+jAcyXYIIZoN7YOAH2AL08tqkQpDqbEcPI07x8ofWll4f89ag8uDSpdAbCRR
 bSPWljZzZ/cRRK5iMbkgODIvLLlCjojXnRN2AMq81Op4jZK9pNfZyq5FvdytiKXgVqTSWLXI/IEYh
 icVB/fl79oeo0wwxCo68tkT5kSCu5yIs2b9wSD9WQsHYyXxQxQR/U8rb5LuPEmrl/Z9VtVlkg82VT
 /FXIgh+6P/m7BLR0Qgy2uUTvl3TDJl4YQxq5p9WTWGWBHTdhJ2IcQmkoASy04LeCbAmUcHtm2GxW+
 RtISQrYI7rnLpcCH7NUGybfCEFZM2lPDk3ppR51BtGBW9ZiS3LHFcQv8GtPCyCdwmKuI9HGHshOdH
 M5dsZKfQsIVgHwQbF20ateLmj8ys/E1JxzFyykfenEFJGQGOYfNbhw7uOq0qMXJxzgTzxmnhHwk8k
 XC6U9whjsJDlKenNmC5fa0gEeVnn1OJJ8WLgUtGu9zDgLJDsKX+u/Lb1PjWbkFvbrV1CYChWJcATw
 jaUwjoy0/FlmKhlyPnCeypS/oJmUn3oQYGaNLS95g=;
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Mon, 24 Jan 2022 12:57:35 +0100
Message-ID: <22204794.ZpPF1Y2lYg@silver>
In-Reply-To: <Ye6IaIqQcwAKv0vb@codewreck.org>
References: <cover.1640870037.git.linux_oss@crudebyte.com>
 <5111aae45d30df13e42073b0af4f16caf9bc79f0.camel@oldum.net>
 <Ye6IaIqQcwAKv0vb@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Montag, 24. Januar 2022 12:07:20 CET Dominique Martinet
 wrote: > Nikolay Kichukov wrote on Mon, Jan 24, 2022 at 11:21:08AM +0100:
 > > It works, sorry for overlooking the 'known limitations' in the [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1nBxyj-00AN4l-NB
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, Greg Kurz <groug@kaod.org>,
 v9fs-developer@lists.sourceforge.net, Nikolay Kichukov <nikolay@oldum.net>,
 Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Montag, 24. Januar 2022 12:07:20 CET Dominique Martinet wrote:
> Nikolay Kichukov wrote on Mon, Jan 24, 2022 at 11:21:08AM +0100:
> > It works, sorry for overlooking the 'known limitations' in the first
> > place. When do we expect these patches to be merged upstream?
> 
> We're just starting a new development cycle for 5.18 while 5.17 is
> stabilizing, so this mostly depends on the ability to check if a msize
> given in parameter is valid as described in the first "STILL TO DO"
> point listed in the cover letter.

I will ping the Redhat guys on the open virtio spec issue this week. If you 
want I can CC you Dominique on the discussion regarding the virtio spec 
changes. It's a somewhat dry topic though.

> I personally would be happy considering this series for this cycle with
> just a max msize of 4MB-8k and leave that further bump for later if
> we're sure qemu will handle it.

I haven't actually checked whether there was any old QEMU version that did not 
support exceeding the virtio queue size. So it might be possible that a very 
ancient QEMU version might error out if msize > (128 * 4096 = 512k).

Besides QEMU, what other 9p server implementations are actually out there, and 
how would they behave on this? A test on their side would definitely be a good 
idea.

> We're still seeing a boost for that and the smaller buffers for small
> messages will benefit all transport types, so that would get in in
> roughly two months for 5.18-rc1, then another two months for 5.18 to
> actually be released and start hitting production code.
> 
> 
> I'm not sure when exactly but I'll run some tests with it as well and
> redo a proper code review within the next few weeks, so we can get this
> in -next for a little while before the merge window.

Especially the buffer size reduction patches needs a proper review. Those 
changes can be tricky. So far I have not encountered any issues with tests at 
least. OTOH these patches could be pushed through separately already, no 
matter what the decision regarding the virtio issue will be.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
