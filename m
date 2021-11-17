Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C98454E3C
	for <lists+v9fs-developer@lfdr.de>; Wed, 17 Nov 2021 21:01:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mnR7K-00061k-C9; Wed, 17 Nov 2021 20:01:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <support-amazon.jp@gbt40r.cn>) id 1mnR7G-00061Z-Cr
 for v9fs-developer@lists.sourceforge.net; Wed, 17 Nov 2021 20:01:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Mime-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DN2KnudTdxo3RSmhoqST9ut3uOVtLAKi46o00k80U+o=; b=cUoEXgyJ9wt2XqLfeA91sAg7zw
 LaUAtAvwgCW3oyiMPDDuIqiA2IQaxa8JMjoRkbXERrfEZfUpNirphGxs/r4XRanNlzj1HA01oF+Nl
 Va7sUvwmJhPiWSD5tkUaYU9c4MYKPGHps8cnU3vQd/dTrrPaljZNOoSFWwSzHxSWIHYU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Mime-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=DN2KnudTdxo3RSmhoqST9ut3uOVtLAKi46o00k80U+o=; b=C
 yn+arjD0eXXjEetmBJ4PI1fKIUIhPoqkEcUa8/qps7adlsiFEcS5aTcXnujuXNP7TkqPk18atFiVm
 CMW3Cxo1A/Awl27uXCq3IThQplUN88XLUHDFqlhlLdTv1qDTcUQbNi4uZ3oXeWEERLwWYAm+Lc7Cn
 XKkgfx5DTPW8MS1s=;
Received: from gbt40r.cn ([106.75.74.228] helo=mail.gbt40r.cn)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mnR79-00GeqB-9D
 for v9fs-developer@lists.sourceforge.net; Wed, 17 Nov 2021 20:01:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=gbt40r.cn; 
 h=Date:From:To:Subject:Message-ID:Mime-Version:Content-Type;
 i=support-amazon.jp@gbt40r.cn;
 bh=DN2KnudTdxo3RSmhoqST9ut3uOVtLAKi46o00k80U+o=;
 b=KRvqlx4KFKhcqqJoeQfCRqVaF92GowJwA3GFsc0PSScLDEp9AoZPWl2b6EuqEtjxhUA6j/J/RV8v
 NKseniN7fg3obSvhpXmyQ7hGCDoYHI8M5ED2rDq9Ttrk73sDOwziLsa/ElhYhi2dLBZkd25V2vw0
 OgT/6yPRGTk1bE/XMqE=
Date: Thu, 18 Nov 2021 03:34:23 +0800
From: "Amazon.co.jp" <support-amazon.jp@gbt40r.cn>
To: <v9fs-developer@lists.sourceforge.net>
Message-ID: <20211118033434767721@gbt40r.cn>
Mime-Version: 1.0
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Amazonお客様 平素は、Amazonをご利用いただき、誠にありがとうございます。
    残念ながら、私たちはあなたのAmazonアカウントを更新できませんでした。
    
 
 Content analysis details:   (1.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
                             bl.spamcop.net
               [Blocked - see <https://www.spamcop.net/bl.shtml?106.75.74.228>]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
X-Headers-End: 1mnR79-00GeqB-9D
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44CQQW1hem9u44CR44Ki44Kr44Km44Oz44OI?=
	=?utf-8?b?5oOF5aCx44KS5pmC6ZaT5YaF44Gr5pu05paw44GX44Gm44GP44Gg44GV?=
	=?utf-8?b?44GE?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

DQoNCiANCg0KDQoNCkFtYXpvbuOBiuWuouanmA0KDQrlubPntKDjga/jgIFBbWF6b27jgpLjgZTl
iKnnlKjjgYTjgZ/jgaDjgY3jgIHoqqDjgavjgYLjgorjgYzjgajjgYbjgZTjgZbjgYTjgb7jgZnj
gIINCg0K5q6L5b+144Gq44GM44KJ44CB56eB44Gf44Gh44Gv44GC44Gq44Gf44GuQW1hem9u44Ki
44Kr44Km44Oz44OI44KS5pu05paw44Gn44GN44G+44Gb44KT44Gn44GX44Gf44CCDQoNCuS7iuWb
nuOBr+OAgeOCq+ODvOODieOBjOacn+mZkOWIh+OCjOOBq+OBquOBo+OBpuOCi+OBi+OAgeiri+ax
guWFiOS9j+aJgOOBjOWkieabtOOBleOCjOOBn+OBquOBqeOAgeOBleOBvuOBluOBvuOBqueQhueU
seOBp+OCq+ODvOODieOBruaDheWgseOCkuabtOaWsOOBp+OBjeOBvuOBm+OCk+OBp+OBl+OBn+OA
gg0KDQrjgqLjgqvjgqbjg7Pjg4jmg4XloLHjga7kuIDpg6jjgYzoqqTjgaPjgabjgYTjgovmlYXj
gavjgIHjgYrlrqLmp5jjga7jgqLjgqvjgqbjg7Pjg4jjgpLntq3mjIHjgZnjgovjgZ/jgoEg44Ki
44Kr44Km44Oz44OI44GuIOaDheWgseOCkueiuuiqjeOBmeOCi+W/heimgeOBjOOBguOCiuOBvuOB
meOAguS4i+OBi+OCieOCouOCq+OCpuODs+ODiOOCkuODreOCsOOCpOODs+OBl+OAgeaDheWgseOC
kuabtOaWsOOBl+OBpuOBj+OBoOOBleOBhOOAgg0KDQoNCg0KDQoNCuips+OBl+OBj+OBr+OBk+OB
oeOCiQ0KDQoNCg0KDQoNCg0K44GU5LiN5L6/44Go44GU5b+D6YWN44KS44GK44GL44GR44GX44G+
44GX44Gm6Kqg44Gr55Sz44GX6Kiz44GU44GW44GE44G+44Gb44KT44GM44CBDQrkvZXljZLjgZTn
kIbop6PjgYTjgZ/jgaDjgY3jgZ/jgY/jgYrpoZjjgYTnlLPjgZfkuIrjgZLjgb7jgZnjgIINCg0K
DQoNCg0KwqkgMTk5Ni0yMDIxLCBBbWF6b24uIEluYy4gb3IgaXRzIGFmZmlsaWF0ZXMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIg
bWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczov
L2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
