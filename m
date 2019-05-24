Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B93FE299E5
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 16:16:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:Subject:Mime-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J8MRbT4C0FodxNQTKoiE0vXw0yRLx9uGOU9KNJq8gZU=; b=oY+p6025YWiqIT
	MDOsGkvRxZtHWTRAlNkav0jTP/FOATGrKmBOghA6zaUKyUwkQgE76a8Jp5uf8+ziYVRCcUayP86oe
	Ehftbzr9TX/5XGWgfWTZj694Ki/x2GlLYwlPsdG0JC3hxSXFOmskNZI04r66yCMMPKHCvu0tnD1C9
	nnA/lDy1UE7DZSwPG3/FQPq9Z2ZDft3HCDrbBeOQJxKvX+9gucRdNnuzj08C0+eKnHK2ORUHl+j8f
	ShqVggxhhgQl8VcDy9wJ19IvYoLN5KjhUpzpHEN+ONm4tdFzHfY7FI/FvRAn9s4b/qQjC8s48Y6TG
	7KeZC6piDfqqqWX4ChsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUAzc-00030r-OV; Fri, 24 May 2019 14:16:20 +0000
Received: from aserp2130.oracle.com ([141.146.126.79])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUAzX-0002xf-Mi
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 14:16:17 +0000
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4OE8XZO170848
 for <linux-nvme@lists.infradead.org>; Fri, 24 May 2019 14:16:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : content-type :
 content-transfer-encoding : mime-version : subject : message-id : date :
 to; s=corp-2018-07-02; bh=YHftovMpCOUorKx9VnjGiTNLuCYd8bwo4Ro2EsbVLGY=;
 b=11eOeROZDy6Esdgwd3CF0+aMNB1q1psq/QT+SsVs6Y4jQOL89pA/KibE0bqjz8SP1ZR3
 dp0a52YjQ6sZePbK8kxiVihFtyDI8ztCzD4NC8nWRLe8KilrcWsX5f7500GvrbTIM6hV
 iLB4aJ31WTDkcaDXl+msBhZBo5kCmG5dTt3fxuCIuHQJKCdxUSxk0HDPZ6NWDnyyHoFG
 4aLGt/ad9ZFTl0fxV8oZqWEeJGc1IoUlYL0S/tCs9ge5WDGeIyv6PaqZ2DrulBo2elZk
 xet0tEr3osNFM44ktyvtb9XgEmJGUxJbhFngeOjjWbUS2eR6c4UjhCdIyxqg9UIyVwz6 Jw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2130.oracle.com with ESMTP id 2smsk5scxn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Fri, 24 May 2019 14:16:10 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4OEGA0U007111
 for <linux-nvme@lists.infradead.org>; Fri, 24 May 2019 14:16:10 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2smsh2ws5t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Fri, 24 May 2019 14:16:09 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x4OEG56R026743
 for <linux-nvme@lists.infradead.org>; Fri, 24 May 2019 14:16:05 GMT
Received: from dhcp-10-154-179-110.vpn.oracle.com (/10.154.179.110)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 24 May 2019 14:16:05 +0000
From: John Donnelly <john.p.donnelly@oracle.com>
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Use of WARN in nvme subssytem. 
Message-Id: <82D7EABA-733D-4CBF-BCD6-E8EA51C2B220@oracle.com>
Date: Fri, 24 May 2019 09:16:01 -0500
To: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
X-Mailer: Apple Mail (2.3445.9.1)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9266
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=3
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=825
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905240096
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9266
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=3 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=863 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905240096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_071615_854712_A0A5FABA 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.79 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

SGksCgpUaGVyZSBpcyBhcHByb3hpbWF0ZWx5IDcyIG9jY3VycmVuY2VzIG9mIFdBUk4qICBpbiB0
aGUgZHJpdmVyL252bWUgbW9kdWxlcyBpbiA1LjIucmMuICBJZiB0aGUgc3lzdGVtIGlzIGNvbmZp
Z3VyZWQgd2l0aCB0aGUgb3B0aW9uIOKAnHBhbmljX29uX3dhcm7igJ0gdGhlIHN5c3RlbSB3aWxs
IHJlYm9vdC4gIEFyZSBhbGwgb2YgIHRoZXNlIHdhcm5pbmdzIG5lY2Vzc2FyeSA/IEkgYW0gc3Vy
ZSBtYW55IGNvdWxkICBiZSBjb252ZXJ0ZWQgdG8gbG9nIGVudHJpZXMgd2l0aCBtb3JlIGluZm9y
bWF0aXZlIGNvbnRlbnQgZm9yIGFkbWluaXN0cmF0b3JzLiAKCgpUaGFua3MsCgpKb2huLgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1h
aWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
