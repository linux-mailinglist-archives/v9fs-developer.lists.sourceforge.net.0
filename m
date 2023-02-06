Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9268F68BD55
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 Feb 2023 13:53:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pP0zl-0008Jv-Lg;
	Mon, 06 Feb 2023 12:53:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1pP0zk-0008Jo-Mt
 for v9fs-developer@lists.sourceforge.net;
 Mon, 06 Feb 2023 12:53:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6KlL80aaEpa2f4ywIEDV3QjQLc6LcycFfyGvK1+jXdw=; b=Hgd8GnijHuinAIaJOnclmfV+jb
 6tcPbLDUM3uD0taAZKcDf3APeEC5PEDtX040MgWb4dSou9bjmwE67PH55MjfGP0ACqFWznKVQqfSP
 spUN32aQLKKOW008gvjTFy23kogzlXsBPKESfsoOXHyqqBA0WpadrvGzTOwsNX1MkdJw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6KlL80aaEpa2f4ywIEDV3QjQLc6LcycFfyGvK1+jXdw=; b=f27w/nRX0i/AzQ1UTk/A9aSQnM
 cNHHdq9ywD/r5MWL391kuAnjggHODp1T5QbN/zHdSVLfCvCs2gBTioiavuOz/YocHE1VNMMUaM0cY
 ejVqH+GlDav6zuOIS6pQ4udrbD3C4bZJX8HtDne+sZ2ino610wBLtzO07k3IwDYx4wPc=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pP0zh-00CZ6q-UX for v9fs-developer@lists.sourceforge.net;
 Mon, 06 Feb 2023 12:53:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=6KlL80aaEpa2f4ywIEDV3QjQLc6LcycFfyGvK1+jXdw=; b=UNF4Eet+VA0VD6w5f8LaYllbZK
 yVyUQLNKHt8ulbObgAei7y39cHf4CGA0oMjPVEpYQw9DZLAgkGPuFJ44qjxm9IkLLg6Spm7cc798J
 +cYg8CEc24uvYssiUjsgVmEZCDRl79q9XWShpHh0tvHs8EHg2tglxyNw7eoB1E4bh2uFvlmM+TTpt
 D3ua1yZh9/0CHJzgzOvbghADq+O9KN5kbxuUK0M/JCVYr2wfIq6MXAIxiVE+T5izBucyjx1nIoe53
 U2XCQt1lHONI5KtlAyhu324DItivz+YD9Hj/sV5M6NyWa54xw7yQKlrqUm+qodfgCs6cZlgFU8Xlj
 voCbvqj/1vXkFkk+AybrSkvpNSgFyUixJjvJOTxKlthbvc7lX/+r2XltCXw+QIt63wRd9dxYPM69e
 X6IV+AWTpuK1SR+wejwbHpnezKVPlW6BBMgw2YoBXGhJAg9+PXDtxH1PX5zJAZO3b++38Wkywl4PU
 9xGcKQJJ1qDU8YDFk5321QLblqfP8ARba1zO+XfuhhGADswx3PYNJ7FJ1om9ludHzqbg11O9NMw3K
 Ff/YxO9zinAtbfX1vXsbn5sQRTRr22pAIbFSVAaw+8jYaonuj5Ucl232DLWJqGse48kK/0Q8dXvVL
 i3GTaBuFyUuA9O95C+gIq9mnhDYLmMgpYIzrCSjZM=;
To: Eric Van Hensbergen <ericvh@gmail.com>
Date: Mon, 06 Feb 2023 13:52:59 +0100
Message-ID: <2067691.iETNyGmF9V@silver>
In-Reply-To: <CAFkjPTnNT+d=u50D1omg8d5QECi-LQ8LZ_zEgoguS==S86KfoA@mail.gmail.com>
References: <20221218232217.1713283-1-evanhensbergen@icloud.com>
 <CAFkjPTm4SsB9rBX4ZZSZCYpiXgWYvQmViA_oALo5acdYNUUW2w@mail.gmail.com>
 <CAFkjPTnNT+d=u50D1omg8d5QECi-LQ8LZ_zEgoguS==S86KfoA@mail.gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sunday, February 5,
 2023 2:44:10 AM CET Eric Van Hensbergen
 wrote: > I suspect a major difference in our two test environments is that
 my > kernel doesn't have CONFIG_FSCACHE -- looking through the [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pP0zh-00CZ6q-UX
Subject: Re: [V9fs-developer] [PATCH v3 00/11] Performance fixes for 9p
 filesystem
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
Cc: lucho@ionkov.net, v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@kernel.org>, rminnich@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sunday, February 5, 2023 2:44:10 AM CET Eric Van Hensbergen wrote:
> I suspect a major difference in our two test environments is that my
> kernel doesn't have CONFIG_FSCACHE -- looking through the code paths,
> there is some fscache code which isn't properly guarded with checking
> if cache=fscache in the v9fs session.  This may be a red-herring, but
> seems suspicious nonetheless.

That was not the problem. I recompiled with CONFIG_FSCACHE disabled, still 
same (mis)behaviours though.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
