Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADB01F5722
	for <lists+linux-nvme@lfdr.de>; Wed, 10 Jun 2020 16:56:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7NQBZOfJ5vnSQzQEcrX2Slm+N9nLo1aqJREXfLFjx0s=; b=JjvssfdMbvs1IY
	OREq5cmC5Nga2xIzYAdhUgeIybK6QpYkF0QS7g/8kS1ozIF/C6xjhTOO+R+gsDzk4+PbnIGM3F8sZ
	CXmsOevqsQy2gh1o0BDQqTQy1ZvabdoeNMnXB25H9yMFZtdkLmrTzGdHZpcwodQJu/7ip6NREJl9l
	Y4rAp9dKTrnGibC9387+Ed3kepJjBxBAuJgQVnqMzy5IRX482+LnI+YjWuR55z43vCbJouC0BrjNV
	hWl4WCvQMDKalOXA8PLB4InYWbRDv96kCVK0yBJUGFjM376PbgKs/gJ6qz1BbfGwe6dwM7GZmjfp/
	nM72Jzq0+l2nml01aQ5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj295-00086q-Ng; Wed, 10 Jun 2020 14:56:03 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj291-00086D-Gr
 for linux-nvme@lists.infradead.org; Wed, 10 Jun 2020 14:56:01 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05AEqMPa046210;
 Wed, 10 Jun 2020 14:53:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=+MkVzWy7hSx4wdwuzJRJZjRevMWLr+97rQSWPuRETeI=;
 b=Fh5YU57LjGtgILZhyagxCJiKu4+KGIutZ5E9PylZp1Qo5JxWx2sdx1km+teF5HpB/a6Y
 +v/mQIhiwB70zeeL6scNIb2z8RPcYg5Erj51xoP8eYmicfNMe6rRTMFP8AWdwcFHfWEh
 zUKNKLZSX6N17fHLjKr1Nd1gbAE/HEbmt2OtJogrNBJb82X7D/quTe7U5//urcAo3qs5
 0malmVNVWml0c0tESY9EcRYvcmIGCsKFbMMN0ZrJdWOcD+Zv5Ws+fywrNKaj/F4ubd6G
 eEmoRBXwje+OuAgP6QfwhPM9kHvClr+5A6DodADS3CcKGBw03E/87H91mpCguJbEIIz4 8Q== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 31g2jravr5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 10 Jun 2020 14:53:37 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05AEi0us135392;
 Wed, 10 Jun 2020 14:53:37 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 31gmqqdenw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 10 Jun 2020 14:53:36 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 05AErZYO021813;
 Wed, 10 Jun 2020 14:53:36 GMT
Received: from [10.159.156.250] (/10.159.156.250)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 10 Jun 2020 07:53:34 -0700
Subject: Re: [PATCH 1/1] nvme-fcloop: verify wwnn and wwpn format
To: James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 hch@lst.de
References: <20200526042118.17836-1-dongli.zhang@oracle.com>
 <60df6752-3512-f7a9-b0df-1096b93b8eda@broadcom.com>
From: Dongli Zhang <dongli.zhang@oracle.com>
Message-ID: <f93adee4-ebf0-a229-e507-4ef4e4fe812d@oracle.com>
Date: Wed, 10 Jun 2020 07:53:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <60df6752-3512-f7a9-b0df-1096b93b8eda@broadcom.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9647
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 bulkscore=0 mlxscore=0
 mlxlogscore=999 adultscore=0 spamscore=0 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006100112
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9647
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 impostorscore=0
 cotscore=-2147483648 priorityscore=1501 spamscore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 mlxlogscore=999 malwarescore=0 mlxscore=0
 phishscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006100113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_075559_647439_919A8077 
X-CRM114-Status: GOOD (  17.70  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.86 listed in wl.mailspike.net]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: sagi@grimberg.me, chaitanya.kulkarni@wdc.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

SGkgQ2hyaXN0b3BoLAoKV291bGQgeW91IG1pbmQgYXBwbHkgdGhpcyBvbmUgd2l0aCB0aGUgUmV2
aWV3ZWQtYnkgZnJvbSBKYW1lcyBhbmQgU2FnaT8KCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xp
bnV4LW52bWUvNjBkZjY3NTItMzUxMi1mN2E5LWIwZGYtMTA5NmI5M2I4ZWRhQGJyb2FkY29tLmNv
bS8KCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LW52bWUvYzRlYzJkOWUtYjA4Yy0xOWIy
LTE2YTUtOTM1MjBjYTEzYzJlQGdyaW1iZXJnLm1lLwoKVGhhbmsgeW91IHZlcnkgbXVjaCEKCkRv
bmdsaSBaaGFuZwoKT24gNi80LzIwIDg6MjAgQU0sIEphbWVzIFNtYXJ0IHdyb3RlOgo+IE9uIDUv
MjUvMjAyMCA5OjIxIFBNLCBEb25nbGkgWmhhbmcgd3JvdGU6Cj4+IFRoZSBudm1lIGhvc3QgYW5k
IHRhcmdldCB2ZXJpZnkgdGhlIHd3bm4gYW5kIHd3cG4gZm9ybWF0IHZpYQo+PiBudm1lX2ZjX3Bh
cnNlX3RyYWRkcigpLiBGb3IgaW5zdGFuY2UsIGl0IGlzIHJlcXVpcmVkIHRoYXQgdGhlIGxlbmd0
aCBvZgo+PiB3d25uIHRvIGJlIGVpdGhlciAyMSAoIm5uLTB4Iikgb3IgMTkgKG5uLSkuCj4+Cj4+
IEFkZCB0aGlzIHZlcmlmaWNhdGlvbiB0byBudm1lLWZjbG9vcCBzbyB0aGF0IHRoZSBpbnB1dCBz
aG91bGQgYWx3YXlzIGJlIGluCj4+IGhleCBhbmQgdGhlIGxlbmd0aCBvZiBpbnB1dCBzaG91bGQg
YWx3YXlzIGJlIDE4Lgo+Pgo+PiBPdGhlcndpc2UsIHRoZSB1c2VyIG1heSB1c2UgZS5nLiAweDIg
dG8gY3JlYXRlIGZjbG9vcCBsb2NhbCBwb3J0LCB3aGlsZQo+PiAweDAwMDAwMDAwMDAwMDAwMDIg
aXMgcmVxdWlyZWQgZm9yIG52bWUgaG9zdCBhbmQgdGFyZ2V0LiBUaGlzIG1ha2VzIHRoZQo+PiBy
ZXF1aXJlbWVudCBvZiBmb3JtYXQgY29uZnVzaW5nLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBEb25n
bGkgWmhhbmcgPGRvbmdsaS56aGFuZ0BvcmFjbGUuY29tPgo+PiAtLS0KPj4gwqAgZHJpdmVycy9u
dm1lL3RhcmdldC9mY2xvb3AuYyB8IDI5ICsrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tCj4+
IMKgIDEgZmlsZSBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+Pgo+
Pgo+IAo+IFJldmlld2VkLWJ5OiBKYW1lcyBTbWFydCA8amFtZXMuc21hcnRAYnJvYWRjb20uY29t
Pgo+IAo+IExvb2tzIGdvb2QuIFNvcnJ5IGZvciB0aGUgZGVsYXkuCj4gCj4gLS0gamFtZXMKPiAK
PiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LW52bWUgbWFpbGluZyBsaXN0CmxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
