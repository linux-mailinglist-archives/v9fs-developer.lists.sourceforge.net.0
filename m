Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E73572586
	for <lists+v9fs-developer@lfdr.de>; Tue, 12 Jul 2022 21:19:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oBLQH-00041O-3t; Tue, 12 Jul 2022 19:19:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1oBLQG-00041I-Kl
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 19:19:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4kLG5LfYXoQgdqNM7ebFbY8AeXr+/H9XyIri+iAlNQM=; b=L0ziX4xvHvfTlrUR8WEHAhT+8X
 xLqSjMofQQdvU0WOhoDukYYjqkw9HFscusvA4NUxXebo1P4KxVJehKrT+7r4elDIXRzgpF/ZYyJHg
 w/YB/Awg2p7Um778qVGSzDd9WUw4dFaDPFMGSsVxlc6L3zqUO3Gj0bK1t0VozN1JIQRA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4kLG5LfYXoQgdqNM7ebFbY8AeXr+/H9XyIri+iAlNQM=; b=bmr1j0//ruoPIXqZNNaIXt0cbR
 yEwVTyhHi9aSnHP1vCWfMuIViIrzQddqQ6jAddCU+yssVROxJMXghsQJHKjrmSDv2a7mV1+6L30FN
 35zTuvawbyR7602fM/rWny7yEchnVah+rbwgCYYkpLASPu/cJi9KCNYiu9/xbYpAvlGA=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oBLQA-0004ZE-KC
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 19:19:51 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 265DBC009; Tue, 12 Jul 2022 21:19:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657653580; bh=4kLG5LfYXoQgdqNM7ebFbY8AeXr+/H9XyIri+iAlNQM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=v0oFbMjIxERf2CyIUqb0YqlcSCRV8PzxbO8OsUI2Iyux9aWIxZUpzAoN4zEMELZLD
 N7LONo04WSxahFCs2xi6Y65w6EJRR5LoBAEhnFKAb6RqEuVCmS3rzlAh6dyZUclV5r
 SHc9m1lLrlZJ6wTvqn5J0wz54osHZKKpW3oU2epIPYsSzwZ4e0uTW38uOCdSsAvu6j
 TcjCMjQCT7+UOB0Z5e26V8H7Dd05NeHqKFRQKEkS1Tsk4xGxFf1vtJs4Dr+xllo8Xs
 xGwifzBYsiOtVRvGHWzCiyz0fYXs+drPq/CM29nDQHQOUFbYt+s0dtsKQH0REz/RPn
 5RHH7Dkw5LbKg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 4BD4BC009;
 Tue, 12 Jul 2022 21:19:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657653579; bh=4kLG5LfYXoQgdqNM7ebFbY8AeXr+/H9XyIri+iAlNQM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0IiI1fsRFjKICPSblsZCIHomSwfHPMphPZP2yPKsl+CpSru/Euv3vgMMMqE29FRDT
 RwijwKYapRiIBz2nWUIrcm6Wqio1hONVlRKXSllIyWgvu069KY38hZz9nbsiODehp9
 NMUUO1OA0GUHqyVjdc70oB5udFc0V5V8l/ZgGAw0Fh7QQVXlTuG3ISWoOuhcnHOUss
 MMdho11wGoaoR+boWt+TBo+gZ8cz/fFsIdanzO+87V/YfaUj8gUysxrkk98zpuHWFK
 jPzStjqluYA8J/8wMsDOC07aIXRyYoSOlq/ufpFn3EqJfZa+DxCrSLpsCcFc4hdIOg
 /mDpp+xpE5HeQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id a0c93479;
 Tue, 12 Jul 2022 19:19:33 +0000 (UTC)
Date: Wed, 13 Jul 2022 04:19:18 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: v9fs-developer@lists.sourceforge.net
Message-ID: <Ys3JNvQRzrhG/56T@codewreck.org>
References: <20220712060801.2487140-1-asmadeus@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220712060801.2487140-1-asmadeus@codewreck.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dominique Martinet wrote on Tue, Jul 12, 2022 at 03:08:01PM
 +0900: > diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c > index
 007c3f45fe05..507974ce880c
 100644 > --- a/net/9p/trans_fd.c > +++ b/net/ [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oBLQA-0004ZE-KC
Subject: Re: [V9fs-developer] [PATCH] 9p: roll p9_tag_remove into p9_req_put
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
Cc: Christian Schoenebeck <linux_oss@crudebyte.com>,
 linux-kernel@vger.kernel.org, Hangyu Hua <hbh25y@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dominique Martinet wrote on Tue, Jul 12, 2022 at 03:08:01PM +0900:
> diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
> index 007c3f45fe05..507974ce880c 100644
> --- a/net/9p/trans_fd.c
> +++ b/net/9p/trans_fd.c
> @@ -272,6 +272,8 @@ static int p9_fd_read(struct p9_client *client, void *v, int len)
>   *
>   */
>  
> +static int failme;
> +

woops, removed that bit.
At least I didn't commit the code that actually triggered the fail...

>  static void p9_read_work(struct work_struct *work)
>  {
>  	__poll_t n;

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
