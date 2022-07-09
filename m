Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 96BFE56CB05
	for <lists+v9fs-developer@lfdr.de>; Sat,  9 Jul 2022 20:09:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oAEtB-0001o1-Vb; Sat, 09 Jul 2022 18:09:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1oAEtA-0001cf-Mg
 for v9fs-developer@lists.sourceforge.net; Sat, 09 Jul 2022 18:09:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=46f1t+u0Kq4NcI1QZkVhp45Lm1NWYmJTdVTOjGrUrNk=; b=gQ6zTxiZ4AIGMsSv4ko8o+/b9/
 CfQ/sA3ypr3s2JmANPnEsPjafbNG04iUfnJiJDfEm3u3pDDCbGArZ4WNgKEIg1wfynkl77QLNGZDd
 M8rnGgQf3anpBZ3uV/bapdYjigPpQptvRGfzUzRLDFEq2NF7B38RSQ18LVTH6anKLnTQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=46f1t+u0Kq4NcI1QZkVhp45Lm1NWYmJTdVTOjGrUrNk=; b=aKZyV9HMgvEySVrYqDSfuAcL0E
 Xu7yq/OmAkKkYzMxyPpbZvrPUhT8kkiRj8lRwwRWpSkP7TuYhrBhXC2d+2TkxctfXUMjUeQFILr/c
 CH77kDGE2cgvB6jvrHRP3Q5pSstuljiYk3cJHpLoUEnE79FEF1WO+bMzHgCfCnbRFNx4=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oAEt7-000722-IP
 for v9fs-developer@lists.sourceforge.net; Sat, 09 Jul 2022 18:09:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=46f1t+u0Kq4NcI1QZkVhp45Lm1NWYmJTdVTOjGrUrNk=; b=S18EurgJ6GxPICZKWQJwIYB8WT
 ZNfXm1YICRPZTCNC5Gi0SkJLxZzKJOjFkHd6AXmtsRnuzItENrFUKzyQ6K1qR/YVwVdL1gLB/dgPl
 zGrsCzeMUjfty0kCTqncwJXHgfVxUuTmf4G5TmgDWqcyTH4Kb6WEPKomwMkaxkT1H3w76yF0zuz1O
 NSMYYtm/SLHRDlIuoUNrrYnvjSaTFZPLDOcKOhs5wLl5oiI/auUJJVuS1OevEI+M7cfLGOFEtDyLZ
 YefcHBYPf8qS2+LYJ1JHzPDdp4oEIQjgxsQizA1t9OUy+YqxY1z3GdrVFsNwwPduEadDcIg2eeWmH
 pT93f3x0kcDzbzspf1YaVw09SsQCIrurIIPyT7Afc/pDI28TwGNT1Ir0Ph/vibcDHM9yEVgfg/ZgB
 aUkkdaqlChzFVDzaEDLVe1WPyBJjS1NY1bGi9F4xtPxfum+Ijse/hQqTqRLBGHOpOsrZpEcbtbmWo
 OlCaLsesecYmjpKRyIL/U7F/rlrgVUJ7M+ZrtiCjRxmq9pw6ftmV0SQpJJGB1+/+y3+dno3BRqzN8
 i792Kp0D4tG4WoUWqNxlA60NI/ezCDyGvNKR4vQxrSt9zHSnOnghUcnwAbRzM87GINoSzxUTVSWow
 BCw8DzQYa04eqXB3s97fgVY0J0bgDmmbVsFYyKvxc=;
To: Dominique Martinet <asmadeus@codewreck.org>,
 Kent Overstreet <kent.overstreet@gmail.com>
Date: Sat, 09 Jul 2022 20:08:41 +0200
Message-ID: <2211309.MyIe47cYEz@silver>
In-Reply-To: <YsmT7WHDh9NXZ/nV@codewreck.org>
References: <20220704010945.C230AC341C7@smtp.kernel.org>
 <1690934.P4sCSNuWZQ@silver> <YsmT7WHDh9NXZ/nV@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Samstag, 9. Juli 2022 16:42:53 CEST Dominique Martinet
 wrote: > Christian Schoenebeck wrote on Sat, Jul 09, 2022 at 04:21:46PM +0200:
 > > > The best thing to do would probably to just tell the clie [...] 
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
X-Headers-End: 1oAEt7-000722-IP
Subject: Re: [V9fs-developer] [PATCH 3/3] 9p: Add mempools for RPCs
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>,
 v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Latchesar Ionkov <lucho@ionkov.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Samstag, 9. Juli 2022 16:42:53 CEST Dominique Martinet wrote:
> Christian Schoenebeck wrote on Sat, Jul 09, 2022 at 04:21:46PM +0200:
> > > The best thing to do would probably to just tell the client it can't use
> > > the mempools for flushes -- the flushes are rare and will use small
> > > buffers with your smaller allocations patch; I bet I wouldn't be able to
> > > reproduce that anymore but it should probably just forbid the mempool
> > > just in case.
> > 
> > So the problem is that one task ends up with more than 1 request at a
> > time,
> > and the buffer is allocated and associated per request, not per task. If I
> > am not missing something, then this scenario (>1 request simultaniously
> > per task) currently may actually only happen with p9_client_flush()
> > calls. Which simplifies the problem.
> 
> Yes that should be the only case where this happens.
> 
> > So probably the best way would be to simply flip the call order such that
> > p9_tag_remove() is called before p9_client_flush(), similar to how it's
> > already done with p9_client_clunk() calls?
> 
> I don't think we can do that safely without some extra work - because
> until we get the reply from the flush, the legitimate reply to the
> original request can still come. It's perfectly possible that by the
> time we sent the flush the server will have sent the normal reply to our
> original request -- actually with flush stuck there it's actually almost
> certain it has...

Mmm, I "think" that wouldn't be something new. There is no guarantee that 
client would not get a late response delivery by server of a request that 
client has already thrown away.

What happens on server side is: requests come in sequentially, and are started 
to be processed exactly in that order. But then they are actually running in 
parallel on worker threads, dispatched back and forth between threads several 
times. And Tflush itself is really just another request. So there is no 
guarantee that the response order corresponds to the order of requests 
originally sent by client, and if client sent a Tflush, it might still get a 
response to its causal, abolished "normal" request.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
