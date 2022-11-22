Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8C2633174
	for <lists+v9fs-developer@lfdr.de>; Tue, 22 Nov 2022 01:40:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxHKa-0007o1-8s;
	Tue, 22 Nov 2022 00:40:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1oxHKY-0007nq-13
 for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 00:40:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9l/g5nGKmHoVQD3sP3ATWDzrkJw/YMvwin9+tmbeCWM=; b=YVPJz+rH6kUeduHcrVO8chOg+s
 T98V5EhM2CNRFWh408xD9xNT8vT3sasBDAi70IXdWEWT3P7F0zVmfDU1BSg1ytHMDEAmWGXo5zEgr
 51NDni5DcijQuvNERQ6A7oFpkEwuZpZjA9rTtO+IWzei6bMPhksIxwq/h5fSvmxXDipI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9l/g5nGKmHoVQD3sP3ATWDzrkJw/YMvwin9+tmbeCWM=; b=E0yUGP0+8p5P29jIS08O7i3Yj4
 Kr8kLqJdz/YuPlh1L0ZOkB/eKYzUKK43Fzak9PtcnQcEhVj/l3gquFXhEc0FW0a701OhjkSgBKoXx
 RBH+OIIHVddKbQqmspC8Cs34u31arZW6k/P8kA8a62JpHPqnQAWfutpIiFsh5HrWDfuY=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oxHKX-0002f7-BA for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 00:40:05 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id E4DC8C01C; Tue, 22 Nov 2022 01:40:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1669077605; bh=9l/g5nGKmHoVQD3sP3ATWDzrkJw/YMvwin9+tmbeCWM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xHQcKg4RdUfiBkoJhLylLdBVGiQbzTNGfW0S2EHCvCjLXXc3rRZwaADl/7GhVImwZ
 Y2Ehq9MDE5SJoKyajJPpga0Fn472iU7QhGFlRbk11xGkyP61ZtvAQfUlqWnoXUQOiQ
 BRFSKUbV4KwGibvHnpS9fE7hB1yuG+4gRgLKBi7Tzxf6mx7sAlBoAqpRcqiPjCTKTV
 l0bEDPoU55R3YXrgpCOBaFj+qf1qiNQ/5MnD1UwS4IPHQrB8URscHQ6O1ZQu7d3xOq
 s8LXIEbJ0Kwj1KVrIpkWvQNcn9eDT7LMkpT00keTbfse9KxbhVky0xVnbwz7HXOIIt
 ZJUiP+HxFyuug==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id D7750C009;
 Tue, 22 Nov 2022 01:40:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1669077605; bh=9l/g5nGKmHoVQD3sP3ATWDzrkJw/YMvwin9+tmbeCWM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xHQcKg4RdUfiBkoJhLylLdBVGiQbzTNGfW0S2EHCvCjLXXc3rRZwaADl/7GhVImwZ
 Y2Ehq9MDE5SJoKyajJPpga0Fn472iU7QhGFlRbk11xGkyP61ZtvAQfUlqWnoXUQOiQ
 BRFSKUbV4KwGibvHnpS9fE7hB1yuG+4gRgLKBi7Tzxf6mx7sAlBoAqpRcqiPjCTKTV
 l0bEDPoU55R3YXrgpCOBaFj+qf1qiNQ/5MnD1UwS4IPHQrB8URscHQ6O1ZQu7d3xOq
 s8LXIEbJ0Kwj1KVrIpkWvQNcn9eDT7LMkpT00keTbfse9KxbhVky0xVnbwz7HXOIIt
 ZJUiP+HxFyuug==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 8d364fb6;
 Tue, 22 Nov 2022 00:39:54 +0000 (UTC)
Date: Tue, 22 Nov 2022 09:39:39 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Y3waS1oq4BmitGLT@codewreck.org>
References: <20221118135542.63400-1-asmadeus@codewreck.org>
 <37091478.n1eaNAWdo1@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <37091478.n1eaNAWdo1@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Mon, Nov 21,
 2022 at 05:35:56PM
 +0100: > Looks good (except of s/rreq/req/ mentioned by Stefano already).
 Thanks for the review (I've taken this as a 'reviewed-by' under the assumption
 of that fix, sorry for being a bit aggressive at collecting these -- I'd
 rather overcredit work being done than the other [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oxHKX-0002f7-BA
Subject: Re: [V9fs-developer] [PATCH 1/2] 9p/xen: check logical size for
 buffer size
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
Cc: v9fs-developer@lists.sourceforge.net,
 Stefano Stabellini <sstabellini@kernel.org>, linux-kernel@vger.kernel.org,
 GUO Zihua <guozihua@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Mon, Nov 21, 2022 at 05:35:56PM +0100:
> Looks good (except of s/rreq/req/ mentioned by Stefano already).

Thanks for the review (I've taken this as a 'reviewed-by' under the
assumption of that fix, sorry for being a bit aggressive at collecting
these -- I'd rather overcredit work being done than the other way around)

I'll send this and the three other commits in my 9p-next branch to Linus
tomorrow around this time:
https://github.com/martinetd/linux/commits/9p-next


> >  		memcpy(&req->rc, &h, sizeof(h));
> 
> Is that really OK?
> 
> 1. `h` is of type xen_9pfs_header and declared as packed, whereas `rc` is of 
>    type p9_fcall not declared as packed.
> 
> 2. Probably a bit dangerous to assume the layout of xen_9pfs_header being in
>    sync with the starting layout of p9_fcall without any compile-time 
>    assertion?

I've done this in a follow up that will be sent to Linus later as per
Stefano's suggestion.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
