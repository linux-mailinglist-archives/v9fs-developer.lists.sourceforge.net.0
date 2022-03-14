Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0F14D8EA8
	for <lists+v9fs-developer@lfdr.de>; Mon, 14 Mar 2022 22:29:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nTsGF-000894-AB; Mon, 14 Mar 2022 21:29:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <eki-net-contact@alowffa.cn>) id 1nTsGD-00088y-Ib
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Mar 2022 21:29:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fQf+gmK+PWM7rA58Ff0hl8gXyDWGNJcuNs5FDuOsVAE=; b=hMepLFuCQnfiM64zJz98Kqka5H
 fx8NVd2NaNOa718OXWRbHJvIljV0tGB79YzDo3+U4MdenuJucwpQPfwfxZFC8Asm9BBooLjKpuzXR
 /L73YS6Du1w6eVINSj+se4NCt9MdWcfDwKA4doxamfhGT7aQuSVq/954tC+6dxIr9YEY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=fQf+gmK+PWM7rA58Ff0hl8gXyDWGNJcuNs5FDuOsVAE=; b=F
 LGl6qom0ZUk4MCNlvmleDClKUMol6MYouzRpGMEwK6fS6Ryqf3MUk5PnIh+Db59sg0gX+35dFCCMg
 FqoB9C7IrB8qcC1MXDab06v1CgYNJxDi/zv6hQ3GnvfoDA43mdhj820gjXEhomk6pCFHa4p8xK7PR
 9IzfoiwK+gpM4a5Y=;
Received: from [134.122.143.141] (helo=alowffa.cn)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nTsG8-00Fman-Ss
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Mar 2022 21:29:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=defult; d=alowffa.cn; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type;
 i=eki-net-contact@alowffa.cn;
 bh=fQf+gmK+PWM7rA58Ff0hl8gXyDWGNJcuNs5FDuOsVAE=;
 b=AD6wnSSo95i159lv/cgDPK5IRsLHtxwoWX2DeoEWuAf9pRzcGXpQRkBZIabWTlQjCpRRErHROesv
 mHre7YOBOj5/OEHu7plWQ73gu36wmVUQIwe2KehsiwHS1IOCD6zsGqkfS2zDPZcRTv/O+jr/iDYd
 ARxf5Z5+Gxv1M98lVlU=
From: eki-net.com <eki-net-contact@alowffa.cn>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Tue, 15 Mar 2022 05:09:17 +0800
Message-ID: <00e4a0366323$b623318c$9b9a5208$@agsh>
MIME-Version: 1.0
X-Spam-Score: 2.3 (++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  日頃より「えきねっと」をご利用いただきありがとうございます。
    「えきねっと」は 2022 年 2 月21 日にサービスをリニューアルいたしました。これ
    に伴い、「えきねっと」利用規約・会員規約を変更し、最後にログ�
    [...] 
 
 Content analysis details:   (2.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  1.3 HTML_IMAGE_ONLY_24     BODY: HTML: images with 2000-2400 bytes of
                             words
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nTsG8-00Fman-Ss
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44GI44GN44Gt44Gj44Go44Ki44Kr44Km44Oz?=
	=?utf-8?b?44OI44Gu6Ieq5YuV6YCA5Lya5Yem55CG44Gr44Gk44GE44Gm?=
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

DQoNCg0K5pel6aCD44KI44KK44CM44GI44GN44Gt44Gj44Go44CN44KS44GU5Yip55So44GE44Gf
44Gg44GN44GC44KK44GM44Go44GG44GU44GW44GE44G+44GZ44CCDQoNCuOAjOOBiOOBjeOBreOB
o+OBqOOAjeOBryAyMDIyIOW5tCAyIOaciDIxIOaXpeOBq+OCteODvOODk+OCueOCkuODquODi+OD
peODvOOCouODq+OBhOOBn+OBl+OBvuOBl+OBn+OAguOBk+OCjCDjgavkvLTjgYTjgIHjgIzjgYjj
gY3jga3jgaPjgajjgI3liKnnlKjopo/ntITjg7vkvJrlk6Hopo/ntITjgpLlpInmm7TjgZfjgIHm
nIDlvozjgavjg63jgrDjgqTjg7PjgpLjgZfjgZ/ml6XjgojjgorotbfnrpfjgZcg44Gm77yS5bm0
5Lul5LiK44CM44GI44GN44Gt44Gj44Go44CN44Gu44GU5Yip55So77yI44Ot44Kw44Kk44Oz77yJ
44GM56K66KqN44Gn44GN44Gq44GE44CM44GI44GN44Gt44Gj44Go44CN44Ki44Kr44Km44Oz44OI
IOOBr+OAgeiHquWLleeahOOBq+mAgOS8muWHpueQhuOBleOBm+OBpuOBhOOBn+OBoOOBj+OBk+OB
qOOBqOOBhOOBn+OBl+OBvuOBl+OBn+OAguOBquOBiuOAgeWvvuixoeOCouOCq+OCpuODs+ODiOOB
ruiHquWLlemAgCDkvJrlh6bnkIbjgpLjgIHmnKzopo/ntITjgavln7rjgaXjgY3jgIEyMDIyIOW5
tCA0IOaciCAxOCAg5pel44KI44KK6aCG5qyh44CB5a6f5pa944GV44Gb44Gm44GE44Gf44Gg44GN
44G+44GZ44CCDQoNCu+8kuW5tOS7peS4iuODreOCsOOCpOODs+OBl+OBpuOBhOOBquOBhOOBiuWu
ouOBleOBvuOBp+OAgeS7iuW+jOOCguOAjOOBiOOBjeOBreOBo+OBqOOAjeOCkuOBlOWIqeeUqOOB
hOOBn+OBoOOBkeOCi+WgtOWQiCDjga/jgIEyMDIyIOW5tCA0IOaciCAxOCDml6XjgojjgorjgoLl
iY3jgavjgIHkuIDluqbjg63jgrDjgqTjg7Pmk43kvZzjgpLjgYrpoZjjgYTjgYTjgZ/jgZfjgb7j
gZnjgIINCg0K4oeS44Ot44Kw44Kk44Oz44Gv44GT44Gh44KJDQoNCuOBquOBiuOAgeOCouOCq+OC
puODs+ODiOOBjOmAgOS8muWHpueQhuOBleOCjOOBn+WgtOWQiOOCguOAgeaWsOOBn+OBq+OCouOC
q+OCpuODs+ODiOeZu+mMsu+8iOeEoeaWmeeZu+mMsu+8ieOBl+OBpuOBhOOBnyDjgaDjgY/jgZPj
gajjgafjgZnjgZDjgavjgIzjgYjjgY3jga3jgaPjgajjgI3jgpLjgZTliKnnlKjjgYTjgZ/jgaDj
gY/jgZPjgajjgYzjgafjgY3jgb7jgZnjga7jgafjgIHku4rlvozjgoLjgZTmhJvpoafjgYTjgZ8g
44Gg44GR44G+44GZ44KI44GG44KI44KN44GX44GP44GK6aGY44GE44GE44Gf44GX44G+44GZ44CC
IA0KDQogDQoNCkNvcHlyaWdodCDCqSBKUiBFYXN0IE5ldCBTdGF0aW9uIENvLixMdGQuIEFsbCBS
aWdodHMgUmVzZXJ2ZWQuDQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3Rz
LnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0
aW5mby92OWZzLWRldmVsb3Blcgo=
