Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 47CAB4F208C
	for <lists+v9fs-developer@lfdr.de>; Tue,  5 Apr 2022 03:05:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nbXd3-0001hC-N2; Tue, 05 Apr 2022 01:05:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <Amazon.co.jp@jmmlm.com>) id 1nbXcs-0001go-Vz
 for v9fs-developer@lists.sourceforge.net; Tue, 05 Apr 2022 01:04:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jwKadVoN6YCqgB+QLPfv1N0VDOKSEUxW8lfvOXEp5Fc=; b=SSZc8eaFVJjKB7wGwInTGLFFZs
 KByOMUZ6LWZD2FqzwrrfitRsJKDebwE5KsAQoZeVlnOhzEHrL6fPu3/7CXDY9sx6/ZkPZ2OpS/ccX
 r39bCnoTIOEemRs+lNrDNxTjl5MKMbisWHrX5m8VurCT9VDTouN2pIhShDjjuJaQdKRs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=jwKadVoN6YCqgB+QLPfv1N0VDOKSEUxW8lfvOXEp5Fc=; b=j
 L7l92TwM8U4FwFSaQ4dGqWNtqFdsjFVR+WDVYSMIGUF3/mRHFYRnIvIY0B9G0jYe6hA6vmgEHvioL
 N07LXWXQ4iDblCX6gU6RLOaY5U6DKsu6wW9wvLdv3w4mxU/n/b1WET9GBAxY2MsPFc1hCQ421rWTC
 CWCdtIPXlegaVgms=;
Received: from jmmlm.com ([173.82.212.139])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nbXco-0001AR-KT
 for v9fs-developer@lists.sourceforge.net; Tue, 05 Apr 2022 01:04:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=jmmlm.com; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type;
 i=Amazon.co.jp@jmmlm.com;
 bh=jwKadVoN6YCqgB+QLPfv1N0VDOKSEUxW8lfvOXEp5Fc=;
 b=IAHEHQQG2/Cm77dWUJ+IzkFrozfoCvzpneC/CmuLuTZXz0xoEaTuase7MACKuMZdo3f5YPtW65yi
 F2z64v0uDYDNjza826r9FTfn5brcnARuMJluPcDnU22I3YboF2BhPApAF5fZrIkQrWjR1ZPRRHfa
 ZjfWzMOUAWw9AxEEB6Q=
From: Amazon.co.jp@jmmlm.com <Amazon.co.jp@jmmlm.com>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Tue, 5 Apr 2022 01:04:32 +000
Message-ID: <00b8021dcef9$f52f75ff$4e1e5416$@Amazon.co.jp>
MIME-Version: 1.0
X-Helo-Check: bad, Forged Random Domain (jmmlm.com)
X-Spam-Score: 1.2 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  お支払方法に問題があり、プライム特典をご利用いただけない状況です
    Amazonプライムをご利用頂きありがとうございます。 お調べしたところ、会費
    [...] 
 
 Content analysis details:   (1.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [173.82.212.139 listed in dnsbl-1.uceprotect.net]
  0.4 INVALID_DATE           Invalid Date: header (not RFC 2822)
  0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
                             [URIs: hshifia.cn]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 T_REMOTE_IMAGE         Message contains an external image
X-Headers-End: 1nbXco-0001AR-KT
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?QW1hem9uLmNvLmpw6YeN6KaB44Gq44GK55+l?=
 =?utf-8?b?44KJ44Gb?=
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

DQogDQoNCg0K44GK5pSv5omV5pa55rOV44Gr5ZWP6aGM44GM44GC44KK44CB44OX44Op44Kk44Og
54m55YW444KS44GU5Yip55So44GE44Gf44Gg44GR44Gq44GE54q25rOB44Gn44GZDQpBbWF6b27j
g5fjg6njgqTjg6DjgpLjgZTliKnnlKjpoILjgY3jgYLjgorjgYzjgajjgYbjgZTjgZbjgYTjgb7j
gZnjgIINCuOBiuiqv+OBueOBl+OBn+OBqOOBk+OCjeOAgeS8muiyu+OBruOBiuaUr+aJleOBhOOB
q+S9v+eUqOOBp+OBjeOCi+acieWKueOBquOCr+ODrOOCuOODg+ODiOOCq+ODvOODieOBjOOCouOC
q+OCpuODs+ODiOOBq+eZu+mMsuOBleOCjOOBpuOBhOOBvuOBm+OCk+OAguOCr+ODrOOCuOODg+OD
iOOCq+ODvOODieaDheWgseOBruabtOaWsOOAgeaWsOOBl+OBhOOCr+ODrOOCuOODg+ODiOOCq+OD
vOODieOBrui/veWKoOOBq+OBpOOBhOOBpuOBr+S7peS4i+OBruaJi+mghuOCkuOBlOeiuuiqjeOB
j+OBoOOBleOBhOOAgg0KICANCjEuIOOCouOCq+OCpuODs+ODiOOCteODvOODk+OCueOBi+OCiUFt
YXpvbuODl+ODqeOCpOODoOS8muWToeaDheWgseOCkueuoeeQhuOBmeOCi+OBqOOBk+OCjeOCkuOC
ouOCr+OCu+OCueOBl+OBvuOBmeOAgg0KMi4gQW1hem9u44OX44Op44Kk44Og44Gr55m76Yyy44GX
44GfQW1hem9uLmNvLmpw44Gu44Ki44Kr44Km44Oz44OI44KS5L2/55So44GX44Gm44K144Kk44Oz
44Kk44Oz44GX44G+44GZ44CCDQozLiDjgIznj77lnKjjga7mlK/miZXmlrnms5XjgI3jga7kuIvj
gavjgYLjgovjgIzmlK/miZXmlrnms5XjgpLlpInmm7TjgZnjgovjgI3jga7jg6rjg7Pjgq/jgpLj
gq/jg6rjg4Pjgq/jgZfjgb7jgZnjgIINCjQuIOacieWKueacn+mZkOOBruabtOaWsOOBvuOBn+OB
r+aWsOOBl+OBhOOCr+ODrOOCuOODg+ODiOOCq+ODvOODieaDheWgseOCkuWFpeWKm+OBl+OBpuOB
j+OBoOOBleOBhOOAgg0KDQrmlK/miZXmlrnms5XjgpLlpInmm7TjgZnjgosgDQoNCg0KDQoNCjQx
MCBUZXJyeSBBdmUuIE5vcnRoIFNlYXR0bGUsIFdBIDk4MTA5LTUyMTAsIFVTQSAgICAgICBWaWV3
IHRoaXMgZW1haWwgaW4geW91ciBicm93c2VyIA0KDQoNCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlm
cy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9y
Z2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
