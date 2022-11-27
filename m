Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E073639B6D
	for <lists+v9fs-developer@lfdr.de>; Sun, 27 Nov 2022 15:45:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ozIui-0006iM-8Z;
	Sun, 27 Nov 2022 14:45:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <christophe.jaillet@wanadoo.fr>) id 1ozIuY-0006iE-AL
 for v9fs-developer@lists.sourceforge.net;
 Sun, 27 Nov 2022 14:45:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2CGnXYFu9aZJr0/A6mMpcQDwUc6BYbp7DcJASxLkqpw=; b=k6ORxhjCcUemcS7WddoObmVDmq
 /WSmu99H6sM8lEy4AH40QDu0oKXWIJwcOt6SDgyhiqoG1QtaHb+edR8b4Sddc2CvFLre0MHDkY9zc
 1LlFVMYuH2CwQBeH5bUCoja7CfYgON/geFu627zfHQQs5zLNBu7HITFPWwuLRrRU/AQw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2CGnXYFu9aZJr0/A6mMpcQDwUc6BYbp7DcJASxLkqpw=; b=XNbkVvkQ32GeLCqdzIOxshCIUN
 zvCe1+Uaw8OhZZkAdBP3ZYOsFACPQrgP0ZBfcPK+EdwmNDMuRhrkRnelqReNy3PflCDZVThmj2DjS
 rJ8bMsXBY413L1VvIuejs1DkLaYZIGULjrgmpHecrEBdiepDbiIPNQAIO1Pwn/lVSGEo=;
Received: from smtp-12.smtpout.orange.fr ([80.12.242.12]
 helo=smtp.smtpout.orange.fr)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ozIuR-00FY4X-NZ for v9fs-developer@lists.sourceforge.net;
 Sun, 27 Nov 2022 14:45:36 +0000
Received: from [192.168.1.18] ([86.243.100.34]) by smtp.orange.fr with ESMTPA
 id zIuHonJ77ap0YzIuIofEV6; Sun, 27 Nov 2022 15:45:23 +0100
X-ME-Helo: [192.168.1.18]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sun, 27 Nov 2022 15:45:23 +0100
X-ME-IP: 86.243.100.34
Message-ID: <d2df2462-518e-4085-57de-5bacd621a3a2@wanadoo.fr>
Date: Sun, 27 Nov 2022 15:45:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
To: Christian Schoenebeck <linux_oss@crudebyte.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>
References: <3d1e0ed9714eaee7e18d9f5b0b4bfa49b00b286d.1669553950.git.christophe.jaillet@wanadoo.fr>
 <16697035.zmtlf8e6Si@silver>
Content-Language: fr
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <16697035.zmtlf8e6Si@silver>
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Le 27/11/2022 à 15:07, Christian Schoenebeck a écrit :
   > On Sunday, November 27, 2022 1:59:25 PM CET Christophe JAILLET wrote: >>
    The 9p fs does not use IDR or IDA functionalities. So there is no p [...]
    
 
 Content analysis details:   (-2.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [80.12.242.12 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [80.12.242.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1ozIuR-00FY4X-NZ
Subject: Re: [V9fs-developer] [PATCH] 9p: Remove some unneeded #include
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
Cc: v9fs-developer@lists.sourceforge.net, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

TGUgMjcvMTEvMjAyMiDDoCAxNTowNywgQ2hyaXN0aWFuIFNjaG9lbmViZWNrIGEgw6ljcml0wqA6
Cj4gT24gU3VuZGF5LCBOb3ZlbWJlciAyNywgMjAyMiAxOjU5OjI1IFBNIENFVCBDaHJpc3RvcGhl
IEpBSUxMRVQgd3JvdGU6Cj4+IFRoZSA5cCBmcyBkb2VzIG5vdCB1c2UgSURSIG9yIElEQSBmdW5j
dGlvbmFsaXRpZXMuIFNvIHRoZXJlIGlzIG5vIHBvaW50IGluCj4+IGluY2x1ZGluZyA8bGludXgv
aWRyLmg+Lgo+PiBSZW1vdmUgaXQuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdG9waGUgSkFJ
TExFVCA8Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI+Cj4+IC0tLQo+IAo+IFJpZ2h0LCBp
dCdzIHVzZWQgYnkgbmV0LzlwL2NsaWVudC5jIG9ubHkuIFByb2JhYmx5IHNvbWUgbW9yZSBmaWxl
cyBpbiBuZXQvOXAKPiBjb3VsZCB0aGVyZWZvcmUgYmUgZGVmbGF0ZWQgYXMgd2VsbC4gQW55d2F5
Ogo+IAo+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gU2Nob2VuZWJlY2sgPGxpbnV4X29zc0BjcnVk
ZWJ5dGUuY29tPgo+IAo+IAoKSGksCmkgd2FzIHVuc3VyZSBpZiBuZXQvOXAgYW5kIGZzLzlwIHNo
b3VsZCBiZSBwYXRjaGVkIGF0IHRoZSBzYW1lIHRpbWUgb3Igbm90LgoKSSdsbCBzZW5kIGFub3Ro
ZXIgcGF0Y2ggZm9yIG5ldC85cC4KCkNKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVs
b3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQv
bGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
