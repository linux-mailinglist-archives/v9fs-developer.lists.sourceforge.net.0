Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D5869B88E
	for <lists+v9fs-developer@lfdr.de>; Sat, 18 Feb 2023 08:51:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pTI02-0007bj-FX;
	Sat, 18 Feb 2023 07:51:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1pTI00-0007bd-MX
 for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 07:51:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rqkbDdTH8Q/SkKVOVqq93Y5dIKlvpKXvER9IFuH5QSg=; b=Uztrv4F5+PG4MZ9C2lapnGj6ng
 y27WP5rn1xqgq6DJ9P+uuUcFfg/0Cf6lTshOyVgoU25QWs8mYnvLKgCHu0rpARDVZlw97zH44VeYv
 7pdWKfCAa9DBrnLGVWAtOthCBUycFPMaBIZTNr6lXhcqJbk9Zm50Jr/gUfYlnZpaFh5Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rqkbDdTH8Q/SkKVOVqq93Y5dIKlvpKXvER9IFuH5QSg=; b=S1xcswqWu58oAlKyi+XRaed5Jk
 O870PBK5TqtLno5ALtpnLjpqG8UYVKELyazES9IbtmoQJ/Cnm2ACi+YAbeQIdr2ELKAKBHXcfrXWH
 k6LgiVnCaltfErnH1vX3rXS8z/JRmpnPpvy4KTC0WYCvFrN6z/Ax1z82ao2RrKhNeHzg=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pTHzx-008E0C-PS for v9fs-developer@lists.sourceforge.net;
 Sat, 18 Feb 2023 07:51:11 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 540C1C01E; Sat, 18 Feb 2023 08:51:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676706687; bh=rqkbDdTH8Q/SkKVOVqq93Y5dIKlvpKXvER9IFuH5QSg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cxPpy4t5/BUED2lUaCMFjukza5RUGMMQLokPf7cBMS138QnNFdlAxgquvCZCOXDsy
 PvaXPBKh86sym0nEUIlZAgiLRy/fYBnj0FiugW5RowgfMuA45WUI2+6yh3/gJ2/HFB
 Fj0+TdZH7AE+gBOEMrCyrdP/0QSg2FaIFw3ip6CuCjyxyZkJtvf+CuCT0YlVQijj41
 sY90U0ZmYctyclthaO+/RcB8h8S2sAx482CcjxrYBtORvJWAj6zakaLG08t5DeYvGq
 fO6X0KpL/omb2KcaO47YDmEXVQBIQKC8VrE+GCrqSWwn89yHMgXEql2F2zls33TXQs
 ejOoxiMzsPQZw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id E6B71C009;
 Sat, 18 Feb 2023 08:51:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1676706686; bh=rqkbDdTH8Q/SkKVOVqq93Y5dIKlvpKXvER9IFuH5QSg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TCHG6QG7LRNHbpCxRAEc1wo1E/QpTFW2JboGOrYLTvFuGV9ObV20Z9TNO7zTsyU8T
 hVNh99xz4/vini8qjc+TkowSbVOrn89j6MmYweXxSmY5BkmQINPqUdSuGjD26cBC4B
 oGnlGhm0HLxp/39axxgLX8kWQwmuO82J7zHLIJ1swbMuuBspYBQEvb8oFTukrqRH0b
 l6qv9tjVRHoE0UeIJryPsxwnyHCPMbo5kms/swfEnIDArY/5njvsxFk4iDh1icDJwi
 Wq/0+PEC3IiYgAWKJq8OPCy3fVSDIwAXe6HrVj0x3nHAK8KfaDTrK7+449TV8/oNb4
 8HASCTOIPCQGQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 1fdbbd87;
 Sat, 18 Feb 2023 07:50:57 +0000 (UTC)
Date: Sat, 18 Feb 2023 16:50:42 +0900
From: asmadeus@codewreck.org
To: Eric Van Hensbergen <ericvh@kernel.org>
Message-ID: <Y/CDUtk3CNIMaf+B@codewreck.org>
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-1-ericvh@kernel.org>
 <20230218003323.2322580-2-ericvh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230218003323.2322580-2-ericvh@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 12:33:13AM
 +0000: > Add maximum p9 header size to MSIZE to make sure we can > have page
 aligned data. > > Signed-off-by: Eric Van Hensbergen <ericvh@k [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1pTHzx-008E0C-PS
Subject: Re: [V9fs-developer] [PATCH v4 01/11] net/9p: Adjust maximum MSIZE
 to account for p9 header
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
Cc: lucho@ionkov.net, linux_oss@crudebyte.com, linux-kernel@vger.kernel.org,
 rminnich@gmail.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Eric Van Hensbergen wrote on Sat, Feb 18, 2023 at 12:33:13AM +0000:
> Add maximum p9 header size to MSIZE to make sure we can
> have page aligned data.
> 
> Signed-off-by: Eric Van Hensbergen <ericvh@kernel.org>

I'd be tempted to round that up to the next PAGE_SIZE, but it likely
won't make any difference in practice if we want to round the actual
payload. Let's go for this.

Reviewed-by: Dominique Martinet <asmadeus@codewreck.org>

> ---
>  net/9p/client.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/net/9p/client.c b/net/9p/client.c
> index 622ec6a586ee..6c2a768a6ab1 100644
> --- a/net/9p/client.c
> +++ b/net/9p/client.c
> @@ -28,7 +28,11 @@
>  #define CREATE_TRACE_POINTS
>  #include <trace/events/9p.h>
>  
> -#define DEFAULT_MSIZE (128 * 1024)
> +/* DEFAULT MSIZE = 32 pages worth of payload + P9_HDRSZ +
> + * room for write (16 extra) or read (11 extra) operands.
> + */
> +
> +#define DEFAULT_MSIZE ((128 * 1024) + P9_IOHDRSZ)
>  
>  /* Client Option Parsing (code inspired by NFS code)
>   *  - a little lazy - parse all client options


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
