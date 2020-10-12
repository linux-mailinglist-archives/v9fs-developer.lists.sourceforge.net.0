Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 05FE328AF7E
	for <lists+v9fs-developer@lfdr.de>; Mon, 12 Oct 2020 09:59:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kRsk4-0003oQ-QJ; Mon, 12 Oct 2020 07:59:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1kRsk2-0003oE-W0
 for v9fs-developer@lists.sourceforge.net; Mon, 12 Oct 2020 07:59:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BoIe3Y0pNKs2R8QzIZT8lyVnGvHy145PVN1FXuvKgwc=; b=Ky15XegcHHRFy8yN7qq0Qt7abg
 Q+5D12OZvV7HRicFhiTlh92I00FFd/MGmPIIOGUfIN5waR6mjdTj1cTpuzNbws6mY5GtQfyc6/+RH
 d2cFd7nWa5GSb5CvnLzf5ejpeVfkj1HdQCoxeWj8D9/NIHaVPAGkyDQHNlARl6Rwazbc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BoIe3Y0pNKs2R8QzIZT8lyVnGvHy145PVN1FXuvKgwc=; b=P/6l1K3osoHVxTUpK131AVGF8/
 +daPm+HfwQeTKS8BKtRN4ZYacNwz5WEqPIe2pZsLUqhYi4eJx8ILov2RGa20wmdPyqrmE9c/Ic09v
 6ePVVeumZUDRaGUIZks+gDTIfzGa5r8pcMgc6k2fioVJc8p+T+v4rNdGfHTpsxxQFkTg=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kRsk0-0078TG-C1
 for v9fs-developer@lists.sourceforge.net; Mon, 12 Oct 2020 07:59:34 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id B3EDCC009; Mon, 12 Oct 2020 09:59:25 +0200 (CEST)
Date: Mon, 12 Oct 2020 09:59:10 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Anant Thazhemadam <anant.thazhemadam@gmail.com>
Message-ID: <20201012075910.GA17745@nautica>
References: <20201012042404.2508-1-anant.thazhemadam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201012042404.2508-1-anant.thazhemadam@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kRsk0-0078TG-C1
Subject: Re: [V9fs-developer] [PATCH net] net: 9p: initialize
 sun_server.sun_path to have addr's value only when addr is valid
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
Cc: lucho@ionkov.net, syzbot+75d51fe5bf4ebe988518@syzkaller.appspotmail.com,
 ericvh@gmail.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 kuba@kernel.org, v9fs-developer@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Anant Thazhemadam wrote on Mon, Oct 12, 2020:
> In p9_fd_create_unix, checking is performed to see if the addr (passed
> as an argument) is NULL or not.
> However, no check is performed to see if addr is a valid address, i.e.,
> it doesn't entirely consist of only 0's.
> The initialization of sun_server.sun_path to be equal to this faulty
> addr value leads to an uninitialized variable, as detected by KMSAN.
> Checking for this (faulty addr) and returning a negative error number
> appropriately, resolves this issue.

I'm not sure I agree a fully zeroed address is faulty but I agree we can
probably refuse it given userspace can't pass useful abstract addresses
here.

Just one nitpick but this is otherwise fine - good catch!

> Reported-by: syzbot+75d51fe5bf4ebe988518@syzkaller.appspotmail.com
> Tested-by: syzbot+75d51fe5bf4ebe988518@syzkaller.appspotmail.com
> Signed-off-by: Anant Thazhemadam <anant.thazhemadam@gmail.com>
> ---
>  net/9p/trans_fd.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
> index c0762a302162..8f528e783a6c 100644
> --- a/net/9p/trans_fd.c
> +++ b/net/9p/trans_fd.c
> @@ -1023,7 +1023,7 @@ p9_fd_create_unix(struct p9_client *client, const char *addr, char *args)
>  
>  	csocket = NULL;
>  
> -	if (addr == NULL)
> +	if (!addr || !strlen(addr))

Since we don't care about the actual length here, how about checking for
addr[0] directly?
That'll spare a strlen() call in the valid case.

Well, I guess it doesn't really matter -- I'll queue this up anyway and
update if you resend.


Thanks,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
