Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8C26298FC
	for <lists+v9fs-developer@lfdr.de>; Tue, 15 Nov 2022 13:37:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ouvCE-00050D-FY;
	Tue, 15 Nov 2022 12:37:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1ouvCC-000506-BS
 for v9fs-developer@lists.sourceforge.net;
 Tue, 15 Nov 2022 12:37:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dRLmRGjelLn4ISwDWuO82EQ3Hk28Cz8KmKcEPDOeBrs=; b=MInjdOe/EQFIFICi3mDoR8Am9V
 uqVg7YFG0wmfikWrSHz6s5wSUfdZi4k5vU4XE3KCpMkaw4lON2yqlAbGPR9lYe2KNc8SkgrwWkBfg
 Sgwyt7ogeGkB9sSy1gyso55kKWsdfoXAXkaEkv9uijfXP1tl6CBFXDRR807yfEkwWyAg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dRLmRGjelLn4ISwDWuO82EQ3Hk28Cz8KmKcEPDOeBrs=; b=WD8aapymgO7GWZET/3pQDXsqjl
 2+mTejFkROa1/7DW2kVh5EJRhdvliIbcaimElshDTVlWqdtFVePOtsv/sbG4l2SEdcvNKOdThj2vx
 DiE5xpIJCZQUPtza38Qx2SNwSdK/NAhfPtGy9BolC7yKWDke1WPhMG0HiTHH46mVXGeU=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ouvC9-0001u3-EC for v9fs-developer@lists.sourceforge.net;
 Tue, 15 Nov 2022 12:37:43 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id BB0D4C009; Tue, 15 Nov 2022 13:37:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1668515859; bh=dRLmRGjelLn4ISwDWuO82EQ3Hk28Cz8KmKcEPDOeBrs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KXOB+kRUbMSDj4e863Cpr7UoXEs8nn0cm9BC5p/k5kpFqX47UPdOSWQGLTZ0ptnfL
 JFZFguJmIVimXgunUzKYjIFn+Owb//uKHqL8vJw/S4day7442/qztmd3t8eBrY0oz6
 d0w+mjQdunUBDMcQGDvOqrinzu1B5yNw7AKjSb5KSqGdP19QWNzwrpRs8B3pcgIBpb
 sWXIBSjI6d1qx2u+YegXuUTqwzm2fDjE6XoDiyns/UboZBSKGYEivR93osRdPXHS2c
 JwAEjC52z3rK/mAWwAPqO2TF2Jdpgvewc+e19j3SvU+usQSYGBvAweNz16TGrWl57x
 kNsncS7S7VodQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 19CBDC009;
 Tue, 15 Nov 2022 13:37:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1668515858; bh=dRLmRGjelLn4ISwDWuO82EQ3Hk28Cz8KmKcEPDOeBrs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pwu5HcHhSenN1e1nzWezhza/vy9zmZTqAVGh0Ms7xh/2tHyeUxbRA81PBKHwISush
 g4V4T3eSfsNcvZsdk667gWIGgwsMT8t5kfAS8yBoYLgF62dgn57vemKVLNzJUfDAxL
 O7QWfMS3FP7gzqFOP/cX0PUGBMrjeuPq9aS5nvW29wDg/1tJo9CDi6sgrHvdR34ldu
 32TbGsma406f+F+a8obtNjQcGTBz+X/DnGsUe3ZbkQlv1/YetIZ22MHXrdvUVkU6wP
 Sb8NugbowQdnN/PcVk5b8jJhlfRWu7He3Ra09koDqXE8r5pnPUi2c0F1uOHUOVXoVJ
 /riwf5+UWjoTA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id c61401fc;
 Tue, 15 Nov 2022 12:37:27 +0000 (UTC)
Date: Tue, 15 Nov 2022 21:37:12 +0900
From: asmadeus@codewreck.org
To: Peng Zhang <zhangpeng362@huawei.com>, dhowells@redhat.com
Message-ID: <Y3OH+Dmi0QIOK18n@codewreck.org>
References: <20221115122701.2117502-1-zhangpeng362@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221115122701.2117502-1-zhangpeng362@huawei.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Peng Zhang wrote on Tue, Nov 15, 2022 at 12:27:01PM +0000:
 > The type of a->key[0] is char. If the length of cache volume key is >
 greater
 than 127, the value of a->key[0] is less than 0. In this case [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1ouvC9-0001u3-EC
Subject: Re: [V9fs-developer] [PATCH] fscache: fix OOB Read in
 __fscache_acquire_volume
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
Cc: lucho@ionkov.net, ericvh@gmail.com, linux_oss@crudebyte.com,
 jlayton@kernel.org, linux-kernel@vger.kernel.org,
 syzbot+a76f6a6e524cf2080aa3@syzkaller.appspotmail.com,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Peng Zhang wrote on Tue, Nov 15, 2022 at 12:27:01PM +0000:
> The type of a->key[0] is char. If the length of cache volume key is
> greater than 127, the value of a->key[0] is less than 0. In this case,
> klen becomes much larger than 255 after type conversion, because the
> type of klen is size_t. As a result, memcmp() is read out of bounds. Fix
> this by adding a check on the length of the key in
> v9fs_cache_session_get_cookie().

Thanks for the analysis. (it took me a while to understand what a->key
was about, this is referring to the code in fscache_volume_same...)

It feels like that's another problem that could be avoided by using
unsigned... but I don't know enough about fscache to comment seriously
about whether that'd be viable or not, and it'd just punt the limit from
127 to 255 anyway.

Rather than this patch, I've had a quick look at afs/cifs/ceph and it
doesen't look like any of these check the name length before calling
fscache_acquire_volume either -- I'd say it's worth moving that check
there.
Perhaps in fscahce_alloc_volume() they already compute
klen = strlen(volume_key) to store it in key[0] -- making sure it fits
a signed char before writing key[0] sounds like a good idea that'd
benefit everyone?

Please test this (feel free to resend that):
---
diff --git a/fs/fscache/volume.c b/fs/fscache/volume.c
index a058e0136bfe..cc206d5e4cc7 100644
--- a/fs/fscache/volume.c
+++ b/fs/fscache/volume.c
@@ -230,6 +230,8 @@ static struct fscache_volume *fscache_alloc_volume(const char *volume_key,
 	 * hashing easier.
 	 */
 	klen = strlen(volume_key);
+	if (klen > 127)
+		goto err_cache;
 	hlen = round_up(1 + klen + 1, sizeof(__le32));
 	key = kzalloc(hlen, GFP_KERNEL);
 	if (!key)
---


David, comments welcome :)

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
