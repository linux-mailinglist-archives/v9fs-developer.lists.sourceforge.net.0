Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA92459A79
	for <lists+v9fs-developer@lfdr.de>; Tue, 23 Nov 2021 04:29:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mpMUc-0001zf-70; Tue, 23 Nov 2021 03:29:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1mpMUa-0001zZ-HT
 for v9fs-developer@lists.sourceforge.net; Tue, 23 Nov 2021 03:29:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q6rotOzdOtlyoSSsUgpQiMgUypI/OA4jyZNRndcqOFk=; b=maFJWeevhiHtghYY3/cIrYLAEr
 t4XpOEdYpp47MuADprgmtxDBk9SlgAoZq4vL6TPcrOJtQ4AW4qA0VNjjH/QHXfVGrwatCsHcgwgQD
 lurH5pJG/x7Uk8l2uwApehCuiZAw5Xa3nt1LryqOV7MhDILI3zg5+7I5/7B19RRZgckI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=q6rotOzdOtlyoSSsUgpQiMgUypI/OA4jyZNRndcqOFk=; b=ZDVzACiOBaE+4WVLAh8hCtkT6b
 qCVSse5rJh6vEkDG5v+gTiKHDcWZigUklONzQk7OaXdaiK+5vCG+3vaYMyfVLe+GoAZyy3CjHfZ5+
 SWUWHiivHtoMrGfceHbltJs2uaOcmdvyhEOk+pEkEMpTK16PaHO4w19XEhMDhZ0cQmN4=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mpMUW-005Z2t-7M
 for v9fs-developer@lists.sourceforge.net; Tue, 23 Nov 2021 03:29:12 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id D4844C009; Tue, 23 Nov 2021 04:28:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1637638138; bh=q6rotOzdOtlyoSSsUgpQiMgUypI/OA4jyZNRndcqOFk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LzwLmfRR+FLWwpc9kIFsfid0CAXMwFnDCQIqt4mt1Rq3g2vpKyq+8duspxhU6QnJ9
 Z1ZNeiRmltUyMVn16G8HAa3KmHfxmUXEUCoPx/lBqTIviOy2pZN6s5rilTmXUKeIGS
 E5DQCEURbsVCIuO8KpR9KVyMEgbGieE92hgWlncbtr0vNKts5QEGYpt/hoIYl5m5HD
 Jeu1qnavC3+KtuDj/Ca3gxyaAO0iFDNl1HpRyusrMrP3zSWVIyrSopCPbc95Sh1Wea
 yNZUcUCEw0QmqvTKsZkgFx4C3ARCrz6p6aQhmcVRWYj1eOULfQPfUboop8tqkh7tOW
 mcRS76pn+dfTA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 4A359C009;
 Tue, 23 Nov 2021 04:28:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1637638137; bh=q6rotOzdOtlyoSSsUgpQiMgUypI/OA4jyZNRndcqOFk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PCR2WFEZ1VR/2VKYJwZ6+70x9UHPJMuQbnrMZrSnt0gDmktO7l7PiJTH8UPwrx6L7
 qCZC0PCyr/oWk6J52X1gG80JRDwl1bLb/ll3pL0SdNpHxuAwSL0z0z14Dm6H+R6HeO
 bkCPcpNX6//JsfjHUmityk7hit4ONvRxiRJPr4JXjXmbbIObo2Yu3dRGjVaVQ6I6tR
 8YYOf3WWH5p58SDjJi5tEA+qAjfz2okDBlHDHvXJ3TTiN5A83UB79i4u+u1Vy6Rfox
 Mnf1tr65KJxULi3h7O1zFkKDa9NyNyvjHQO8xTep0PHRzPwGHWlXHy2S1cBzSR/5Ow
 HylfqYTARShYQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 797d049c;
 Mon, 22 Nov 2021 22:35:33 +0000 (UTC)
Date: Tue, 23 Nov 2021 07:35:18 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YZwbJiFcLgwITsUe@codewreck.org>
References: <YZl+eD6r0iIGzS43@codewreck.org> <4244024.q9Xco3kuGk@silver>
 <YZrEPj9WLx36Pm3k@codewreck.org> <1797352.eH9cFvQebf@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1797352.eH9cFvQebf@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Mon, Nov 22,
 2021 at 02:32:23PM
 +0100: > I "think" this could be used for all 9p message types except for
 the listed > former three, but I'll review the 9p specs more ca [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1mpMUW-005Z2t-7M
Subject: Re: [V9fs-developer] [PATCH v3 6/7] 9p/trans_virtio: support larger
 msize values
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, Greg Kurz <groug@kaod.org>,
 v9fs-developer@lists.sourceforge.net, Nikolay Kichukov <nikolay@oldum.net>,
 Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Mon, Nov 22, 2021 at 02:32:23PM +0100:
> I "think" this could be used for all 9p message types except for the listed 
> former three, but I'll review the 9p specs more carefully before v4. For Tread 
> and Twrite we already received the requested size, which just leaves Treaddir, 
> which is however indeed tricky, because I don't think we have any info how 
> many directory entries we could expect.

count in Treaddir is a number of bytes, not a number of entries -- so
it's perfect for this as well :)

> A simple compile time constant (e.g. one macro) could be used instead of this 
> function. If you prefer a constant instead, I could go for it in v4 of course. 
> For this 9p client I would recommend a function though, simply because this 
> code has already seen some authors come and go over the years, so it might be 
> worth the redundant code for future safety. But I'll adapt to what others 
> think.

In this case a fallback constant seems simpler than a big switch like
you've done, but honestly I'm not fussy at this point -- if you work on
this you have the right to decide this kind of things in my opinion.

My worry with the snippet you listed is that you need to enumerate all
calls again, so if someday the protocol is extended it'll be a place to
forget adding new calls (although compiler warnings help with that),
whereas a fallback constant will always work as long as it's small
messages.

But really, as long as it's not horrible I'll take it :)

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
