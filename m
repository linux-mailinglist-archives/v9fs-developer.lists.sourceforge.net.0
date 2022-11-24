Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1EB6374EC
	for <lists+v9fs-developer@lfdr.de>; Thu, 24 Nov 2022 10:16:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oy8LN-00071U-Qe;
	Thu, 24 Nov 2022 09:16:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1oy8LL-00071O-Sl
 for v9fs-developer@lists.sourceforge.net;
 Thu, 24 Nov 2022 09:16:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fYK7x/HVlerQ23GUYyPIC3fExRNhf08M/ieWtcdPBaU=; b=O7ICSZ7RRBIdIr065iqB/SL3et
 XJ4M1o44IssHE0IYHjh/MqmpTABJ9U+t04Jj95kLsPz+8N6E3NWart2pBMBKjivo1NdXMRsBTXfmC
 XhxamDrPOGimzyT+m6IFUcBFsf1PeUeV9NTXkLJJRmtBCPzkn9IoAFhaf/OiU9VKqYlo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fYK7x/HVlerQ23GUYyPIC3fExRNhf08M/ieWtcdPBaU=; b=j+BiYrjAIR1qj69pPGEudpbbaT
 G0wqHOZ3+JdJUmN7UY682fwVgyGdAC6ncbK/YGycuBypSZ2atlpIM51bJSxATaPs8j5cxi4AP3XLa
 Ta4lMsgfUr9tpLNoo9HBAfbcsK1Z/hl9yphcFXRc7SvDOZqfaHh4uTATPXZwHVkhw9uM=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oy8LH-003OrV-O5 for v9fs-developer@lists.sourceforge.net;
 Thu, 24 Nov 2022 09:16:27 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 6BDF5C009; Thu, 24 Nov 2022 10:16:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1669281384; bh=fYK7x/HVlerQ23GUYyPIC3fExRNhf08M/ieWtcdPBaU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1g5nuPdhzJD/GkzC0n8BVpLRwMHqctNyzHWuXnHbIRgSdRg5WvtNsJ1XXuG8agRZr
 zxIg4yy3ZZ1jd7ipVbMnXIBgH2/pCsVny9d3Jgled84C3Itij7gD+14+oeKJMSrkmQ
 Men+YV9uCUEBB6gkh+BvSg0tl2FPljjQkbaEmfVCfP2HJ42V1ww1FZxb4tXBUDjpQ1
 /GUao+dZa3uQLTksW45w6Lpjk93KLgOqbJ1dBnt5W/mdqlTedeFg+Y4gEGocC6GS5P
 g3XXznFJYLWpNm3Tg+wrCm/2RqLT0tcqMHl95NKFSSbTf7TXf03qtO0sa95jd82AnO
 2REc39M3j/1Fg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 0621EC009;
 Thu, 24 Nov 2022 10:16:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1669281383; bh=fYK7x/HVlerQ23GUYyPIC3fExRNhf08M/ieWtcdPBaU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=avBJQWG8xUErxoDHN+z/ITJqMCgszKmNs4fnPIdhhIc9+SfeOb70sirpQZLi2Uz6Y
 HAHGYh2GXqt23vAxe8bbWl6p6MdnQqdHIzaWTOuRigxWC/gez4eULisReRp86HVqSM
 BPP22jEE+mfGnVuwXZbhh672wYDW7QthBbo9d2EHJHCuPLVL0DO0EiOzYLUpXoANwQ
 PD1Jz2WSZvtRECzhM6EhupWV2QW7XqBkxBL8J97LihwEJoe+uAdXpU0ODhd+Bn2EQB
 jMm0JZgyTI11kli7vRvRCA2xKJGi+fVhBvx4xoZnB+lyP5KQBWyf/QfsncxPbbLW6X
 TqW9ndofVBLNA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 0f5d5d5a;
 Thu, 24 Nov 2022 09:16:09 +0000 (UTC)
Date: Thu, 24 Nov 2022 18:15:54 +0900
From: asmadeus@codewreck.org
To: Wang Hai <wanghai38@huawei.com>
Message-ID: <Y382Spkkzt+i86e8@codewreck.org>
References: <20221124081005.66579-1-wanghai38@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221124081005.66579-1-wanghai38@huawei.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Wang Hai wrote on Thu, Nov 24, 2022 at 04:10:05PM +0800: >
 Both p9_fd_create_tcp() and p9_fd_create_unix() will call > p9_socket_open().
 If the creation of p9_trans_fd fails, > p9_fd_create_tcp() and [...] 
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
X-Headers-End: 1oy8LH-003OrV-O5
Subject: Re: [V9fs-developer] [PATCH net] net/9p: Fix a potential socket
 leak in p9_socket_open
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
 linux_oss@crudebyte.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 viro@zeniv.linux.org.uk, v9fs-developer@lists.sourceforge.net, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Wang Hai wrote on Thu, Nov 24, 2022 at 04:10:05PM +0800:
> Both p9_fd_create_tcp() and p9_fd_create_unix() will call
> p9_socket_open(). If the creation of p9_trans_fd fails,
> p9_fd_create_tcp() and p9_fd_create_unix() will return an
> error directly instead of releasing the cscoket, which will

(typo, socket or csocket -- I'll fix this on applying)

> result in a socket leak.
> 
> This patch adds sock_release() to fix the leak issue.

Thanks, it looks good to me.
A bit confusing that sock_alloc_files() calls sock_release() itself on
failure, but that means this one's safe at least...

> Fixes: 6b18662e239a ("9p connect fixes")

(the leak was present before that commit so I guess that's not really
correct -- but it might help figure out up to which point stable folks
will be able to backport so I guess it's useful either way)

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
