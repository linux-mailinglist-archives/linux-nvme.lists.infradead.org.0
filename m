Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE341E6C61
	for <lists+linux-nvme@lfdr.de>; Thu, 28 May 2020 22:19:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gtz2wVxrbZyyHnTR2j6/8xgykB9pV1qeoYt3XGEr2o4=; b=ntKf9ZCEfxqJeCU1UxgW2BbEN
	lQ5NuPSt4WyqDbQ4J9KWHiVmEQv9l1c4lzEmq+Ouy7L7SPaS0eZcENlsnSVvTUmTg17vPeHzMJ3w4
	DDHyUBDK7qojiJb1dlbo3xEnUNY2PNyiY8zWgpjQ7bWGxa8HOzWG1Jfcwzrbd93xfcMNl6ZCkzpbN
	vbLf55irP3xfXiDNf4Rb85+IF/mjx1TQjEOZr0hSS7XGX44ABoE/OulriHKbtsu2LCIucMBDf4mu5
	hhIoHLfT2+W7rHH/FMUxq9M5HDXdU3sV0tZS7CjxYrkEBr2ILZsZAA1elW1F2vrEGXf6BH4OxRCJo
	8xlOrNGKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeP06-0002YR-0J; Thu, 28 May 2020 20:19:38 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeOzz-0002WJ-IY
 for linux-nvme@lists.infradead.org; Thu, 28 May 2020 20:19:33 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04SKBvkQ176959;
 Thu, 28 May 2020 20:19:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=Hv8ohpce88M/SCupqMGYlKCrTgESmjXWEjDcd3/zWIc=;
 b=kF3ipv60+QxcpLewIStynfjW0JevjLwRjeeFSaQRgU2BmUg5RbEUllZ5hnG6y6VOw2Ox
 MPdpQODPW3qPjv0XtDK92GWgvNnVdVcazm83Xi6P6flkcgx003UmPAuPrWvb3Ceek7oa
 tUMrY25tGZfwAlAmerTUxuipJaryzPSwqHOm3Jqf5zgvQeeDwtYbB+oJUb1j92TzNoYW
 XYNMcrEfIDkwlJ0Rd8/Gb5qK2hamR4WVJb3/YAqMaS/P/tznU4Tsx8G4ngdBsU98Px11
 XCsP6X1N3zXb9/Dd0ZRec+yqcMrIlJ1YI2vg41D8rzepn4pE0Spafsna+Gpij1nQWQai wA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 318xbk75cm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 28 May 2020 20:19:07 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04SK7fkQ033332;
 Thu, 28 May 2020 20:19:07 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 31a9kt4k69-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 28 May 2020 20:19:07 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 04SKJ16d013332;
 Thu, 28 May 2020 20:19:01 GMT
Received: from dhcp-10-76-241-128.usdhcp.oraclecorp.com (/10.76.241.128)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 28 May 2020 13:19:01 -0700
Subject: Re: [PATCHv3 2/2] nvme: cancel requests for real
To: Keith Busch <kbusch@kernel.org>
References: <20200528153441.3501777-1-kbusch@kernel.org>
 <20200528153441.3501777-2-kbusch@kernel.org>
 <68629453-d776-59e5-cdc9-8681eb2bab37@oracle.com>
 <20200528191118.GB3504306@dhcp-10-100-145-180.wdl.wdc.com>
 <20200528191443.GA3504350@dhcp-10-100-145-180.wdl.wdc.com>
From: Alan Adamson <alan.adamson@oracle.com>
Message-ID: <f9cbedc9-88b2-acc8-5b95-f1c247ab1525@oracle.com>
Date: Thu, 28 May 2020 13:21:48 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200528191443.GA3504350@dhcp-10-100-145-180.wdl.wdc.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9635
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=3
 mlxscore=0 adultscore=0
 mlxlogscore=999 malwarescore=0 spamscore=0 bulkscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005280132
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9635
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 spamscore=0 mlxscore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 cotscore=-2147483648
 suspectscore=3 bulkscore=0 clxscore=1015 impostorscore=0 malwarescore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005280132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_131931_751938_634D94C7 
X-CRM114-Status: GOOD (  16.44  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: axboe@kernel.dk, sagi@grimberg.me,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org, hch@lst.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

SXQgZGlkIGNvbWUgYmFjay7CoCBKdXN0IHRvb2sgYSBsaXR0bGUgbG9uZ2VyLgoKQWxhbgoKW8Kg
IDM5NC4zMTkzNzhdIG52bWUgbnZtZTA6IEkvTyA5NjAgUUlEIDI2IHRpbWVvdXQsIHJlc2V0IGNv
bnRyb2xsZXIKW8KgIDM5NC4zMzQyMjhdIG52bWUgbnZtZTA6IG5ldyBlcnJvciBkdXJpbmcgcmVz
ZXQKW8KgIDM5NC4zNDAxMjVdIG52bWUgbnZtZTA6IFNodXRkb3duIHRpbWVvdXQgc2V0IHRvIDEw
IHNlY29uZHMKW8KgIDM5NC4zNDM0NTJdIG52bWUgbnZtZTA6IDU2LzAvMCBkZWZhdWx0L3JlYWQv
cG9sbCBxdWV1ZXMKW8KgIDM5NC4zNDM1NTddIEZBVUxUX0lOSkVDVElPTjogZm9yY2luZyBhIGZh
aWx1cmUuCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG5hbWUgZmFpbF9pb190aW1lb3V0
LCBpbnRlcnZhbCAxLCBwcm9iYWJpbGl0eSAxMDAsIHNwYWNlIAowLCB0aW1lcyA5OTUKW8KgIDM5
NC4zNDM1NTldIENQVTogNTMgUElEOiAwIENvbW06IHN3YXBwZXIvNTMgTm90IHRhaW50ZWQgNS43
LjAtcmM3KyAjMgpbwqAgMzk0LjM0MzU1OV0gSGFyZHdhcmUgbmFtZTogT3JhY2xlIENvcnBvcmF0
aW9uIE9SQUNMRSBTRVJWRVIgClg2LTIvQVNNLE1PVEhFUkJPQVJELDFVLCBCSU9TIDM4MDUwMTAw
IDA4LzMwLzIwMTYKW8KgIDM5NC4zNDM1NjBdIENhbGwgVHJhY2U6ClvCoCAzOTQuMzQzNTYxXcKg
IDxJUlE+ClvCoCAzOTQuMzQzNTYzXcKgIGR1bXBfc3RhY2srMHg2ZC8weDlhClvCoCAzOTQuMzQz
NTY0XcKgIHNob3VsZF9mYWlsLmNvbGQuNSsweDMyLzB4NDIKW8KgIDM5NC4zNDM1NjZdwqAgYmxr
X3Nob3VsZF9mYWtlX3RpbWVvdXQrMHgyNi8weDMwClvCoCAzOTQuMzQzNTY2XcKgIGJsa19tcV9j
b21wbGV0ZV9yZXF1ZXN0KzB4MTUvMHgzMApbwqAgMzk0LjM0MzU2OV3CoCBudm1lX2lycSsweGQ5
LzB4MWYwIFtudm1lXQpbwqAgMzk0LjM0MzU3MV3CoCBfX2hhbmRsZV9pcnFfZXZlbnRfcGVyY3B1
KzB4NDQvMHgxOTAKW8KgIDM5NC4zNDM1NzNdwqAgaGFuZGxlX2lycV9ldmVudF9wZXJjcHUrMHgz
Mi8weDgwClvCoCAzOTQuMzQzNTc0XcKgIGhhbmRsZV9pcnFfZXZlbnQrMHgzYi8weDVhClvCoCAz
OTQuMzQzNTc1XcKgIGhhbmRsZV9lZGdlX2lycSsweDg3LzB4MTkwClvCoCAzOTQuMzQzNTc3XcKg
IGRvX0lSUSsweDU0LzB4ZTAKW8KgIDM5NC4zNDM1NzhdwqAgY29tbW9uX2ludGVycnVwdCsweGYv
MHhmClvCoCAzOTQuMzQzNTc5XcKgIDwvSVJRPgpbwqAgMzk0LjM0MzU4MV0gUklQOiAwMDEwOmNw
dWlkbGVfZW50ZXJfc3RhdGUrMHhjMS8weDQwMApbwqAgMzk0LjM0MzU4Ml0gQ29kZTogZmYgZTgg
ZTMgNDEgOTMgZmYgODAgN2QgYzcgMDAgNzQgMTcgOWMgNTggMGYgMWYgNDQgCjAwIDAwIGY2IGM0
IDAyIDBmIDg1IGQyIDAyIDAwIDAwIDMxIGZmIGU4IDE2IGMzIDk5IGZmIGZiIDY2IDBmIDFmIDQ0
IDAwIAowMCA8NDU+IDg1IGU0IDBmIDg4IDNkIDAyIDAwIDAwIDQ5IDYzIGM0IDQ4IDhkIDE0IDQw
IDQ4IDhkIDBjIGM1IDAwIDAwClvCoCAzOTQuMzQzNTgzXSBSU1A6IDAwMTg6ZmZmZmFlNGVjYzZj
YmU0MCBFRkxBR1M6IDAwMDAwMjQ2IE9SSUdfUkFYOiAKZmZmZmZmZmZmZmZmZmZkZApbwqAgMzk0
LjM0MzU4NF0gUkFYOiBmZmZmOWI1MzdmYzZjYzQwIFJCWDogZmZmZmNlNGViZmM0MzIwMCBSQ1g6
IAowMDAwMDAwMDAwMDAwMDFmClvCoCAzOTQuMzQzNTg1XSBSRFg6IDAwMDAwMDViZDBiNTFmMDQg
UlNJOiAwMDAwMDAwMDMxNTczODYyIFJESTogCjAwMDAwMDAwMDAwMDAwMDAKW8KgIDM5NC4zNDM1
ODVdIFJCUDogZmZmZmFlNGVjYzZjYmU4MCBSMDg6IDAwMDAwMDAwMDAwMDAwMDIgUjA5OiAKMDAw
MDAwMDAwMDAyYzRjMApbwqAgMzk0LjM0MzU4Nl0gUjEwOiAwMTFjNjVjYTNkZWUyYjBjIFIxMTog
ZmZmZjliNTM3ZmM2YmI0NCBSMTI6IAowMDAwMDAwMDAwMDAwMDAyClvCoCAzOTQuMzQzNTg2XSBS
MTM6IGZmZmZmZmZmYTM3NGMxMjAgUjE0OiBmZmZmZmZmZmEzNzRjMjA4IFIxNTogCmZmZmZmZmZm
YTM3NGMxZjAKW8KgIDM5NC4zNDM1ODhdwqAgY3B1aWRsZV9lbnRlcisweDJlLzB4NDAKW8KgIDM5
NC4zNDM1OTBdwqAgY2FsbF9jcHVpZGxlKzB4MjMvMHg0MApbwqAgMzk0LjM0MzU5MV3CoCBkb19p
ZGxlKzB4MjMwLzB4MjcwClvCoCAzOTQuMzQzNTkyXcKgIGNwdV9zdGFydHVwX2VudHJ5KzB4MWQv
MHgyMApbwqAgMzk0LjM0MzU5NF3CoCBzdGFydF9zZWNvbmRhcnkrMHgxNzAvMHgxYzAKW8KgIDM5
NC4zNDM1OTZdwqAgc2Vjb25kYXJ5X3N0YXJ0dXBfNjQrMHhiNi8weGMwClvCoCA0MjQuNTI0MzQx
XSBudm1lIG52bWUwOiBJL08gOTYwIFFJRCAyNiB0aW1lb3V0LCBhYm9ydGluZwpbwqAgNDI0LjUy
NDM4OV0gbnZtZSBudm1lMDogQWJvcnQgc3RhdHVzOiAweDAKW8KgIDQ1NC43Mjk2MjJdIG52bWUg
bnZtZTA6IEkvTyA5NjAgUUlEIDI2IHRpbWVvdXQsIHJlc2V0IGNvbnRyb2xsZXIKW8KgIDQ1NC43
NDA0NDJdIG52bWUgbnZtZTA6IG5ldyBlcnJvciBkdXJpbmcgcmVzZXQKW8KgIDQ1NC43NTA0MDNd
IG52bWUgbnZtZTA6IFNodXRkb3duIHRpbWVvdXQgc2V0IHRvIDEwIHNlY29uZHMKW8KgIDQ1NC43
NTM1MDhdIG52bWUgbnZtZTA6IDU2LzAvMCBkZWZhdWx0L3JlYWQvcG9sbCBxdWV1ZXMKW8KgIDQ1
NC43NTM1OTZdIEZBVUxUX0lOSkVDVElPTjogZm9yY2luZyBhIGZhaWx1cmUuCiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIG5hbWUgZmFpbF9pb190aW1lb3V0LCBpbnRlcnZhbCAxLCBwcm9i
YWJpbGl0eSAxMDAsIHNwYWNlIAowLCB0aW1lcyA5OTQKW8KgIDQ1NC43NTM1OThdIENQVTogNTMg
UElEOiAwIENvbW06IHN3YXBwZXIvNTMgTm90IHRhaW50ZWQgNS43LjAtcmM3KyAjMgpbwqAgNDU0
Ljc1MzU5OV0gSGFyZHdhcmUgbmFtZTogT3JhY2xlIENvcnBvcmF0aW9uIE9SQUNMRSBTRVJWRVIg
Clg2LTIvQVNNLE1PVEhFUkJPQVJELDFVLCBCSU9TIDM4MDUwMTAwIDA4LzMwLzIwMTYKW8KgIDQ1
NC43NTM1OTldIENhbGwgVHJhY2U6ClvCoCA0NTQuNzUzNjAwXcKgIDxJUlE+ClvCoCA0NTQuNzUz
NjAzXcKgIGR1bXBfc3RhY2srMHg2ZC8weDlhClvCoCA0NTQuNzUzNjA0XcKgIHNob3VsZF9mYWls
LmNvbGQuNSsweDMyLzB4NDIKW8KgIDQ1NC43NTM2MDVdwqAgYmxrX3Nob3VsZF9mYWtlX3RpbWVv
dXQrMHgyNi8weDMwClvCoCA0NTQuNzUzNjA2XcKgIGJsa19tcV9jb21wbGV0ZV9yZXF1ZXN0KzB4
MTUvMHgzMApbwqAgNDU0Ljc1MzYwOV3CoCBudm1lX2lycSsweGQ5LzB4MWYwIFtudm1lXQpbwqAg
NDU0Ljc1MzYxMl3CoCBfX2hhbmRsZV9pcnFfZXZlbnRfcGVyY3B1KzB4NDQvMHgxOTAKW8KgIDQ1
NC43NTM2MTNdwqAgaGFuZGxlX2lycV9ldmVudF9wZXJjcHUrMHgzMi8weDgwClvCoCA0NTQuNzUz
NjE1XcKgIGhhbmRsZV9pcnFfZXZlbnQrMHgzYi8weDVhClvCoCA0NTQuNzUzNjE2XcKgIGhhbmRs
ZV9lZGdlX2lycSsweDg3LzB4MTkwClvCoCA0NTQuNzUzNjE3XcKgIGRvX0lSUSsweDU0LzB4ZTAK
W8KgIDQ1NC43NTM2MTldwqAgY29tbW9uX2ludGVycnVwdCsweGYvMHhmClvCoCA0NTQuNzUzNjIw
XcKgIDwvSVJRPgpbwqAgNDU0Ljc1MzYyMl0gUklQOiAwMDEwOmNwdWlkbGVfZW50ZXJfc3RhdGUr
MHhjMS8weDQwMApbwqAgNDU0Ljc1MzYyM10gQ29kZTogZmYgZTggZTMgNDEgOTMgZmYgODAgN2Qg
YzcgMDAgNzQgMTcgOWMgNTggMGYgMWYgNDQgCjAwIDAwIGY2IGM0IDAyIDBmIDg1IGQyIDAyIDAw
IDAwIDMxIGZmIGU4IDE2IGMzIDk5IGZmIGZiIDY2IDBmIDFmIDQ0IDAwIAowMCA8NDU+IDg1IGU0
IDBmIDg4IDNkIDAyIDAwIDAwIDQ5IDYzIGM0IDQ4IDhkIDE0IDQwIDQ4IDhkIDBjIGM1IDAwIDAw
ClvCoCA0NTQuNzUzNjI0XSBSU1A6IDAwMTg6ZmZmZmFlNGVjYzZjYmU0MCBFRkxBR1M6IDAwMDAw
MjQ2IE9SSUdfUkFYOiAKZmZmZmZmZmZmZmZmZmZkZApbwqAgNDU0Ljc1MzYyNV0gUkFYOiBmZmZm
OWI1MzdmYzZjYzQwIFJCWDogZmZmZmNlNGViZmM0MzIwMCBSQ1g6IAowMDAwMDAwMDAwMDAwMDFm
ClvCoCA0NTQuNzUzNjI2XSBSRFg6IDAwMDAwMDY5ZTE2ZDI5NWIgUlNJOiAwMDAwMDAwMDMxNTcz
ODYyIFJESTogCjAwMDAwMDAwMDAwMDAwMDAKW8KgIDQ1NC43NTM2MjZdIFJCUDogZmZmZmFlNGVj
YzZjYmU4MCBSMDg6IDAwMDAwMDAwMDAwMDAwMDIgUjA5OiAKMDAwMDAwMDAwMDAyYzRjMApbwqAg
NDU0Ljc1MzYyN10gUjEwOiAwMTFjNjVlZWJhZjBjNzllIFIxMTogZmZmZjliNTM3ZmM2YmI0NCBS
MTI6IAowMDAwMDAwMDAwMDAwMDAyClvCoCA0NTQuNzUzNjI3XSBSMTM6IGZmZmZmZmZmYTM3NGMx
MjAgUjE0OiBmZmZmZmZmZmEzNzRjMjA4IFIxNTogCmZmZmZmZmZmYTM3NGMxZjAKW8KgIDQ1NC43
NTM2MzBdwqAgY3B1aWRsZV9lbnRlcisweDJlLzB4NDAKW8KgIDQ1NC43NTM2MzJdwqAgY2FsbF9j
cHVpZGxlKzB4MjMvMHg0MApbwqAgNDU0Ljc1MzYzM13CoCBkb19pZGxlKzB4MjMwLzB4MjcwClvC
oCA0NTQuNzUzNjM0XcKgIGNwdV9zdGFydHVwX2VudHJ5KzB4MWQvMHgyMApbwqAgNDU0Ljc1MzYz
Nl3CoCBzdGFydF9zZWNvbmRhcnkrMHgxNzAvMHgxYzAKW8KgIDQ1NC43NTM2MzddwqAgc2Vjb25k
YXJ5X3N0YXJ0dXBfNjQrMHhiNi8weGMwClvCoCA0ODQuOTM0NTg3XSBudm1lIG52bWUwOiBJL08g
OTYwIFFJRCAyNiB0aW1lb3V0LCBhYm9ydGluZwpbwqAgNDg0LjkzNDY0MV0gbnZtZSBudm1lMDog
QWJvcnQgc3RhdHVzOiAweDAKW8KgIDQ5Mi42MTM4NjFdIElORk86IHRhc2sga3dvcmtlci91MTE0
OjI6MTE4MiBibG9ja2VkIGZvciBtb3JlIHRoYW4gMjQ1IApzZWNvbmRzLgpbwqAgNDkyLjYxMzg4
NF3CoMKgwqDCoMKgwqAgTm90IHRhaW50ZWQgNS43LjAtcmM3KyAjMgpbwqAgNDkyLjYxMzkxMl0g
ImVjaG8gMCA+IC9wcm9jL3N5cy9rZXJuZWwvaHVuZ190YXNrX3RpbWVvdXRfc2VjcyIgCmRpc2Fi
bGVzIHRoaXMgbWVzc2FnZS4KW8KgIDQ5Mi42MTM5NDhdIGt3b3JrZXIvdTExNDoywqAgRMKgwqDC
oCAwwqAgMTE4MsKgwqDCoMKgwqAgMiAweDgwMDA0MDAwClvCoCA0OTIuNjEzOTUzXSBXb3JrcXVl
dWU6IG52bWUtd3EgbnZtZV9zY2FuX3dvcmsgW252bWVfY29yZV0KW8KgIDQ5Mi42MTM5NTRdIENh
bGwgVHJhY2U6ClvCoCA0OTIuNjEzOTU2XcKgIF9fc2NoZWR1bGUrMHgyZGMvMHg3MTAKW8KgIDQ5
Mi42MTM5NThdwqAgPyBfX2tmaWZvX3RvX3VzZXJfcisweDkwLzB4OTAKW8KgIDQ5Mi42MTM5NjBd
wqAgc2NoZWR1bGUrMHg0NC8weGIwClvCoCA0OTIuNjEzOTYxXcKgIGJsa19tcV9mcmVlemVfcXVl
dWVfd2FpdCsweDRiLzB4YjAKW8KgIDQ5Mi42MTM5NjJdwqAgPyBmaW5pc2hfd2FpdCsweDgwLzB4
ODAKW8KgIDQ5Mi42MTM5NjNdwqAgYmxrX21xX2ZyZWV6ZV9xdWV1ZSsweDFhLzB4MjAKW8KgIDQ5
Mi42MTM5NjZdwqAgbnZtZV91cGRhdGVfZGlza19pbmZvKzB4NjIvMHgzYjAgW252bWVfY29yZV0K
W8KgIDQ5Mi42MTM5NjhdwqAgX19udm1lX3JldmFsaWRhdGVfZGlzaysweDhkLzB4MTQwIFtudm1l
X2NvcmVdClvCoCA0OTIuNjEzOTcwXcKgIG52bWVfcmV2YWxpZGF0ZV9kaXNrKzB4YTQvMHgxNDAg
W252bWVfY29yZV0KW8KgIDQ5Mi42MTM5NzFdwqAgPyBibGtfbXFfcnVuX2h3X3F1ZXVlKzB4YmEv
MHgxMDAKW8KgIDQ5Mi42MTM5NzNdwqAgcmV2YWxpZGF0ZV9kaXNrKzB4MmIvMHhhMApbwqAgNDky
LjYxMzk3NV3CoCBudm1lX3ZhbGlkYXRlX25zKzB4NDYvMHg1YjAgW252bWVfY29yZV0KW8KgIDQ5
Mi42MTM5NzhdwqAgPyBfX252bWVfc3VibWl0X3N5bmNfY21kKzB4ZTAvMHgxYjAgW252bWVfY29y
ZV0KW8KgIDQ5Mi42MTM5ODBdwqAgbnZtZV9zY2FuX3dvcmsrMHgyNWEvMHgzMTAgW252bWVfY29y
ZV0KW8KgIDQ5Mi42MTM5ODNdwqAgcHJvY2Vzc19vbmVfd29yaysweDFhYi8weDM4MApbwqAgNDky
LjYxMzk4NF3CoCB3b3JrZXJfdGhyZWFkKzB4MzcvMHgzYjAKW8KgIDQ5Mi42MTM5ODVdwqAga3Ro
cmVhZCsweDEyMC8weDE0MApbwqAgNDkyLjYxMzk5MF3CoCA/IGNyZWF0ZV93b3JrZXIrMHgxYjAv
MHgxYjAKW8KgIDQ5Mi42MTM5OTJdwqAgPyBrdGhyZWFkX3BhcmsrMHg5MC8weDkwClvCoCA0OTIu
NjE0MDExXcKgIHJldF9mcm9tX2ZvcmsrMHgzNS8weDQwClvCoCA1MTUuMTM5ODc5XSBudm1lIG52
bWUwOiBJL08gOTYwIFFJRCAyNiB0aW1lb3V0LCByZXNldCBjb250cm9sbGVyClvCoCA1MTUuMTUw
NjM0XSBudm1lIG52bWUwOiBuZXcgZXJyb3IgZHVyaW5nIHJlc2V0ClvCoCA1MTUuMTU4MzEwXSBi
bGtfdXBkYXRlX3JlcXVlc3Q6IEkvTyBlcnJvciwgZGV2IG52bWUwbjEsIHNlY3RvciAwIG9wIAow
eDA6KFJFQUQpIGZsYWdzIDB4MCBwaHlzX3NlZyAxIHByaW8gY2xhc3MgMApbwqAgNTE1LjE1ODM0
Nl0gQnVmZmVyIEkvTyBlcnJvciBvbiBkZXYgbnZtZTBuMSwgbG9naWNhbCBibG9jayAwLCBhc3lu
YyAKcGFnZSByZWFkClvCoCA1MTUuMTYwODAwXSBudm1lIG52bWUwOiBTaHV0ZG93biB0aW1lb3V0
IHNldCB0byAxMCBzZWNvbmRzClvCoCA1MTUuMTYzOTU0XSBudm1lIG52bWUwOiA1Ni8wLzAgZGVm
YXVsdC9yZWFkL3BvbGwgcXVldWVzCltyb290QGxvY2FsaG9zdCB+XSMKCgoKT24gNS8yOC8yMCAx
MjoxNCBQTSwgS2VpdGggQnVzY2ggd3JvdGU6Cj4gT24gVGh1LCBNYXkgMjgsIDIwMjAgYXQgMTI6
MTE6MThQTSAtMDcwMCwgS2VpdGggQnVzY2ggd3JvdGU6Cj4+IFlvdSBjYW4gZXhwZWN0IHlvdXIg
ZmFrZSB0aW1lb3V0IHdpdGggMTAwJSBwcm9iYWJsaWxpdHkgdG8gdGFrZSAxNTAKPj4gc2Vjb25k
cyBtaW5pbXVtIHRvIHJldHVybiBhIHJldHJ5YWJsZSByZXF1ZXN0Lgo+IFNvcnJ5LCBJIHNob3Vs
ZCBoYXZlIHNhaWQgMzAwIHNlY29uZHMuIFdlIHJlc3RhcnQgdGhlIHRpbWVyIGZvciBhYm9ydHMs
Cj4gc28gNSByZXF1ZXVlcyAqIDMwIHNlY29uZHMgKiAyIHRpbWVyIHN0YXJ0cyA9IDMwMCBzZWNv
bmRzLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtbnZtZSBtYWlsaW5nIGxpc3QKbGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
