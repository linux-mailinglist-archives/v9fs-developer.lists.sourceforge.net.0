Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F708B8F24
	for <lists+v9fs-developer@lfdr.de>; Wed,  1 May 2024 19:42:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1s2DyL-0007yz-Uy;
	Wed, 01 May 2024 17:42:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <no-reply@pp-wing.com>) id 1s2DyK-0007ym-QY
 for v9fs-developer@lists.sourceforge.net;
 Wed, 01 May 2024 17:42:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Subject:To:From:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zVjJh+fcXfVBVQ1/zX4FjqeSUdrtl+MEwrOXBQ5n/UU=; b=X9EwHX0dTGHn/QDNdiVFvHFT8o
 DngLy5241HXoyE1X3NTN+5UgtKkVVNPmpPGmccMbt6E+oSkvwWOXbufRCPh3FiA/cXfhmB6Axa1NQ
 4rULLrIeaNRHotW6aQUgHDzlRWXRdZIzSoB6zjybX206t00YFrQBPPXaLEMgX5Ot20Ts=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=zVjJh+fcXfVBVQ1/zX4FjqeSUdrtl+MEwrOXBQ5n/UU=; b=M
 EWOTxA+LUGq9+nfK9HlNdX8OucY4sEIfpcLy7JrnU+XMg3Aoh+IlTjhjrDKEUooIDKkfxghyBne6O
 sBdA22GHaFGTjl5t6A6QcyjqnMZ/iGAOZk9sv8KVy8aP0vhvO5NTNYtfFFLm/Uy9zCzQrFWCXQuqE
 b/I+lGhfODjQwoU0=;
Received: from [104.143.35.5] (helo=mail0.pp-wing.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s2DyJ-0001mZ-Kh for v9fs-developer@lists.sourceforge.net;
 Wed, 01 May 2024 17:42:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=pp-wing.com;
 h=Message-ID:From:To:Subject:Date:MIME-Version:Content-Type:
 Content-Transfer-Encoding; i=no-reply@pp-wing.com;
 bh=zVjJh+fcXfVBVQ1/zX4FjqeSUdrtl+MEwrOXBQ5n/UU=;
 b=YBNwPp9yc00d5/CB0JbyjjrJEee8qmc6mprOcMsweFz45nj321w1eWiVfDvoG2bg9Q/j0iE2FWj7
 UnsxWUSLfjFqJ/yhsjFmQ8O/o3f2daUIbv1uTohN6FdlIXCd0riczNn2X6A/zY+ZIou1asvZJIn8
 Z7D5hGraHFwePgb459I=
Message-ID: <604bb9039e71426739f109761c017c86@pp-wing.com>
From: =?utf-8?B?6Ieq5YuV44Oh44O844Or6YCB5L+h?= <no-reply@pp-wing.com>
To: <v9fs-developer@lists.sourceforge.net>
Date: Thu, 02 May 2024 01:42:11 +0800
MIME-Version: 1.0
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  三 井 住 友 カ ー ドをご利用のお客様へ このたびは三
    井 住 友 カ ー ドをご利用いただき、誠にありがとうございます。
    下記のご利用照会がございましたので、お知らせいたします。
    
 
 Content analysis details:   (1.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
                             [URIs: kinoini.com]
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: pp-wing.com]
  0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
                             DNSWL was blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [104.143.35.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
X-Headers-End: 1s2DyJ-0001mZ-Kh
Subject: [V9fs-developer] =?utf-8?b?44CQ5LiJ5LqV5L2P5Y+LIOOCq+ODvOODiQ==?=
	=?utf-8?b?44CRIOOBiuaUr+aJleOBhOS6iOWumumHkemhjeOBruOBlOahiOWGhQ==?=
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
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

5LiJIOS6lSDkvY8g5Y+LIOOCqyDjg7wg44OJ44KS44GU5Yip55So44Gu44GK5a6i5qeY44G4DQoN
CuOBk+OBruOBn+OBs+OBr+S4iSDkupUg5L2PIOWPiyDjgqsg44O8IOODieOCkuOBlOWIqeeUqOOB
hOOBn+OBoOOBjeOAgeiqoOOBq+OBguOCiuOBjOOBqOOBhuOBlOOBluOBhOOBvuOBmeOAgg0K5LiL
6KiY44Gu44GU5Yip55So54Wn5Lya44GM44GU44GW44GE44G+44GX44Gf44Gu44Gn44CB44GK55+l
44KJ44Gb44GE44Gf44GX44G+44GZ44CCDQoNCuKAu+acrOODoeODvOODq+OBr+OAgeOBlOWIqeeU
qOODu+iri+axguOCkueiuuWumuOBmeOCi+OCguOBruOBp+OBr+OBguOCiuOBvuOBm+OCk+OAgg0K
44GU5Yip55So5pel5pmC77yaMjAyNCAvIDA1IC8gMDEgICAgICAyMyA6IDE4DQrjgZTliKnnlKjl
oLTmiYDvvJrjgrvjg5bjg7Mt44Kk44Os44OW44OzIOWNg+S7o+eUsOS4gOODhOapiyAxIOS4geeb
ruW6lw0K44GU5Yip55So6YeR6aGN77yaOSwgNTgw5YaGDQoNCuOCq+ODvOODieOCkuS9v+eUqOOB
l+OBn+immuOBiOOBjOOBquOBhOWgtOWQiOOBr+OAgeS7peS4iyDjga4g44OqIOODsyDjgq8g44KS
44Kv44OqIOODgyDjgq8g44GXIOOBpuOCqyDjg7wg44OJ5L2/55So44Gu6Kmz57Sw44KS56K66KqN
44GX44Gm44GP44Gg44GV44GE44CCDQpodHRwczovL2tpbm9pbmkuY29tDQoNCu+8nOOBlOazqOaE
j+eCue+8ng0K4oC777yR77yO5pys44K144O844OT44K544Gv44CB44GK5a6i5qeY44Gu5LiJIOS6
lSDkvY8g5Y+LIOOCqyDjg7wg44OJ44Gu44GU5Yip55So54Wn5Lya44GM6KGM44KP44KM44Gf5aC0
5ZCI44CBDQrkuIkg5LqVIOS9jyDlj4sgTkVU44Gr44GU55m76Yyy44GE44Gf44Gg44GE44Gm44GE
44KL44Oh44O844Or44Ki44OJ44Os44K544G444GK55+l44KJ44Gb44GZ44KL44K144O844OT44K5
44Gn44GZ44CCDQrigLvvvJLvvI7jgZTlpZHntITjgq3jg6Pjg7Pjgrvjg6vjgajjgarjgaPjgZ/l
oLTlkIjjga7jgYrlj5bmtojjgZfmg4XloLHjga/phY3kv6HjgZXjgozjgb7jgZvjgpPjgIINCuKA
u++8k++8juS4iSDkupUg5L2PIOWPiyBWaXNh44OX44Oq44Oa44Kk44OJ44Kr44O844OJ5Y+K44Gz
5LiJ5LqV5L2P5Y+L44OQ44O844OB44Oj44Or44KrIOODvCDjg4njga7jgZTliKnnlKjliIbjgoLl
kKvjgb/jgb7jgZnjgIINCuKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKA
lOKAlOKAlOKAlOKAlOKAlOKAlOKAlOKAlA0K4pag55m6IOihjCDogIXilqANCuS4iSDkupUg5L2P
IOWPiyDjgqsg44O8IOODieagquW8j+S8muekvg0K44CSMTM1LTAwNjENCuadseS6rOmDveaxn+ad
seWMuuixiua0sjLkuIHnm64y55WqMzEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVy
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0
cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
