Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3DF62D865
	for <lists+v9fs-developer@lfdr.de>; Thu, 17 Nov 2022 11:50:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ovcTJ-000215-48;
	Thu, 17 Nov 2022 10:50:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1ovcT7-00020b-1u
 for v9fs-developer@lists.sourceforge.net;
 Thu, 17 Nov 2022 10:50:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cUAVzy++vQmF1k3gRGwLejGc6gHKv/q3FUdmGQcPv7Q=; b=F86l2gyuYP0vFM5Fr1ZsTNJO8e
 cXj29YqWEZDjq3pB+UlYy74N9LZm5ppuouI0J6KkrvCY5/9a09NrLJ49V4vebZe1W19YBiIXGsX7s
 tZkWweiLUNgxUu2NFdwV+zuL7gD0zEipWHBuOdVd0RbOSovSxGtUpAIzyl2rdJszA8TY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cUAVzy++vQmF1k3gRGwLejGc6gHKv/q3FUdmGQcPv7Q=; b=EEoxm/tw3/ANDcyPrnWDHD0d7Z
 3Eh7+ooT0eCekT/EgbgtiKAJKQ2SkvFHM4zNXWbWU/yvHC7AK+fQzL+/RP8F6LNFjhHoWFWWldUkC
 ubWBKMEJpXbezC4M8QH1oUnzNELFR6F/9WNtYTi9VSPccaV81tmx4SoagagTtAsOnTno=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ovcSy-00016a-JD for v9fs-developer@lists.sourceforge.net;
 Thu, 17 Nov 2022 10:50:00 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id E3472C01F; Thu, 17 Nov 2022 11:49:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1668682195; bh=cUAVzy++vQmF1k3gRGwLejGc6gHKv/q3FUdmGQcPv7Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BMyfqENtg6i87RKdb1ZZgsKaQUo8OKlUxPvU7uZUvz7/wZHAxvJX0A3p9TWlfUs5n
 F7YWL6NOGu0UeqKpGrS2XDH/5Ti+zQwCEoD1ySCaiUUzoeSpnQZnBvisi3x1bRjaZj
 2HFsLJO9SZt/+jH2zMGObsbWJzrngovxWkVyQiCju9XSa4q+vMKn7t31RQbL6pWHKw
 eNyEd3FZAhXcZES6zRAg7oSjNjfu6y9IwkIECdo4PhaTff0l9dQcxYh9Ddqqa7ogEt
 AyE4AIUrD2AFH6C64lFIrAeUnhBJbWVAGCpZEkbSRwqqduQR/jvZwGjI3g1zCH41cd
 F+82HW0gXwXpw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 37A9FC009;
 Thu, 17 Nov 2022 11:49:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1668682195; bh=cUAVzy++vQmF1k3gRGwLejGc6gHKv/q3FUdmGQcPv7Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BMyfqENtg6i87RKdb1ZZgsKaQUo8OKlUxPvU7uZUvz7/wZHAxvJX0A3p9TWlfUs5n
 F7YWL6NOGu0UeqKpGrS2XDH/5Ti+zQwCEoD1ySCaiUUzoeSpnQZnBvisi3x1bRjaZj
 2HFsLJO9SZt/+jH2zMGObsbWJzrngovxWkVyQiCju9XSa4q+vMKn7t31RQbL6pWHKw
 eNyEd3FZAhXcZES6zRAg7oSjNjfu6y9IwkIECdo4PhaTff0l9dQcxYh9Ddqqa7ogEt
 AyE4AIUrD2AFH6C64lFIrAeUnhBJbWVAGCpZEkbSRwqqduQR/jvZwGjI3g1zCH41cd
 F+82HW0gXwXpw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id fd609252;
 Thu, 17 Nov 2022 10:49:43 +0000 (UTC)
Date: Thu, 17 Nov 2022 19:49:28 +0900
From: asmadeus@codewreck.org
To: GUO Zihua <guozihua@huawei.com>
Message-ID: <Y3YRuHnkULT1Ti3l@codewreck.org>
References: <20221117091159.31533-1-guozihua@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221117091159.31533-1-guozihua@huawei.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  GUO Zihua wrote on Thu, Nov 17, 2022 at 05:11:56PM +0800:
 > This patchset fixes the write overflow issue in p9_read_work. As well as
 > some follow up cleanups. Thanks for this v2. Comments below 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1ovcSy-00016a-JD
Subject: Re: [V9fs-developer] [PATCH 0/3 v2] 9p: Fix write overflow in
 p9_read_work
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
 linux_oss@crudebyte.com, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

GUO Zihua wrote on Thu, Nov 17, 2022 at 05:11:56PM +0800:
> This patchset fixes the write overflow issue in p9_read_work. As well as
> some follow up cleanups.

Thanks for this v2.

Comments below

> GUO Zihua (3):
>   9p: Fix write overflow in p9_read_work
>   9p: Remove redundent checks for message size against msize.

This has 'Fixes: 3da2e34b64cd ("9p: Fix write overflow in
p9_read_work")' but that commit isn't applied yet, so the commit hash
only exists in your tree -- I will get a different hash when I apply the
patch (because it'll contain my name as committer, date changed etc)

I don't think it really makes sense to separate these two patches, I'll
squash them together on my side.

>   9p: Use P9_HDRSZ for header size

This makes sense to keep separate, I'll just drop the 'fixes' tag for
the same reason as above


I'll do the squash & test tomorrow, you don't need to resend.
I will tell you when I push to next so you can check you're happy with
my version.
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
