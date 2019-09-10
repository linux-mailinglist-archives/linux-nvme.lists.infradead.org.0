Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A80AAE259
	for <lists+linux-nvme@lfdr.de>; Tue, 10 Sep 2019 04:30:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lBCzHkDp0IkSFxQRs8oEmHaZ02LcWmWuu50NkJEQU28=; b=iB8v6VZJaFXww4
	vRNSJVGGAh3y649AlnQUVWNyX0+cE4PwtxfO94uZMFzGCAz/nSpKJAZyWOfFQE9zetoT9xAnrCL6T
	fm82/0lyG/2e5Fky4IPJlLDj4HMh5ovrxX5im7wBqUceBDQikdyMrGt76wUgLrAlD2LpbcvAW27oy
	nFaQy0IpC137m2WbZZ2GbB3Q+6l9TzxfwMxz8Q1dApE910c4PaGoTy7HRyuptnmgvRoV86vntww53
	yTTIaogEvdm+ggebahNj2+WZqqOyvzWOD20lmgX39g6FoempjHYenEGPORTJq3CfbHVbXnCURnclH
	/zaea5HG7d7QQEmoIXpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Vv0-0007We-Kb; Tue, 10 Sep 2019 02:30:10 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Vuo-0007WE-Lt
 for linux-nvme@lists.infradead.org; Tue, 10 Sep 2019 02:30:00 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8A2Sn6k148119;
 Tue, 10 Sep 2019 02:29:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2019-08-05;
 bh=4k9wqr+BxvnC8lZSubHEB2rnlbkos4PEU+yrJB1I5CY=;
 b=a/W60Gm2P8qZnSJt88pfgbkGMqQlom9s94Yi7jKK+Ggjfr3vXxSrjwoZoHgxEgzJN81e
 cPCTfV/EreUY6QA3Pqfp8h0xatjN/H7VaqjfH+GnuktAaYyW9aJSLZZUgV1dqWfa0Jpz
 DZLj7d/BzBo16LdADvl9u1nevU2bJI86ztfkacGXZRZakYgTgn+dEpKf1ftLedf81zxu
 2RyJZuA0bl/ACBdcmdZLszdUYjJA2UJ8HAyoIPv55hoBWnByK/7fI4NgWdj2Lwg6DBsN
 0hkIJZbdHfLP+lzD+EOVu7XK+2jhfSFfMgoOh/BEV4c5TBYAXfzOiej23wuEsdUyR5Y2 Ug== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2uw1m8r2qf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 10 Sep 2019 02:29:43 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8A2Sexp089522;
 Tue, 10 Sep 2019 02:29:43 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2uwpjv8ecg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 10 Sep 2019 02:29:43 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x8A2Tb42011888;
 Tue, 10 Sep 2019 02:29:37 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 09 Sep 2019 19:29:37 -0700
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH v4 1/3] block: centralize PI remapping logic to the block
 layer
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <1567956405-5585-1-git-send-email-maxg@mellanox.com>
 <yq1mufei4zk.fsf@oracle.com>
 <d6cfe6e5-508a-f01c-267d-c8009fafc571@mellanox.com>
Date: Mon, 09 Sep 2019 22:29:34 -0400
In-Reply-To: <d6cfe6e5-508a-f01c-267d-c8009fafc571@mellanox.com> (Max
 Gurtovoy's message of "Mon, 9 Sep 2019 16:55:57 +0300")
Message-ID: <yq1d0g8hoj5.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9375
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1909100023
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9375
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1909100023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_192958_851059_A5E2B1B7 
X-CRM114-Status: GOOD (  19.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: axboe@kernel.dk, keith.busch@intel.com, sagi@grimberg.me,
 "Martin K. Petersen" <martin.petersen@oracle.com>, israelr@mellanox.com,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 shlomin@mellanox.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


Max,

> maybe we can add profiles to type0 and type2 in the future and have
> more readable code.

It's a deliberate feature that we treat DIX Type 0, 1, and 2 the
same. It's very common to mix and match legacy drives, T10 PI Type 1,
and T10 PI Type 2 devices in a system. In order for MD/DM stacking,
multipathing, etc. to work, it is important that all devices share the
same protection format, interpretation of the tags, etc.

Type 2, where the ref tag can be different from the LBA, was designed
exclusively for use inside disk arrays where the array firmware is the
sole entity accessing blocks on media. And thus always knows what the
expected ref tag should be for a given LBA (typically the LUN LBA as
seen by the host interface and not the target LBA on the back-end
drive).

For Linux, however, where we need to support dd'ing from the device node
without any knowledge an application or filesystem may have about the
written PI, it's imperative that the reference tag is something
predictable. Therefore it is deliberate that we always use the LBA (or
a derivative thereof for the smaller intervals) for the reference tag.
Even if T10 PI Type 2 in theory allows for the tag to be an arbitrary
number. But Linux is a general purpose OS and not an array controller
firmware. So we can't really leverage that capability.

Also. Take MD, for instance. The same I/O could be going to a mirror of
Type 1 and Type 2 devices. We obviously can't have two different types
of PI hanging off a bio. Nor do we have the capability to handle
arbitrary MD/DM stacking with PI format properties potentially changing
many times within the block range constituting a single I/O.

That's why we have the integrity profile which describes a common block
layer PI format that's somewhat orthogonal to how the underlying device
is formatted.

There are a couple of warts in that department. One is the IP checksum
which is now mostly a legacy thing and not implemented/relevant for
NVMe. The other is Type 3 devices that need special care and
feeding. But Type 3 does not appear to be actively used by anyone
anymore. We recently discovered that it's completely broken in the NVMe
spec and nobody ever noticed. And I don't think it was ever used
as-written in SCSI (Type 3 was an attempt to standardize a particular
vendor's existing, proprietary format).

Anyway. So my take on all this is that the T10-DIF-TYPE1-CRC profile is
"it" and everything else is legacy.

> I think I'll prepare dummy/empty callbacks for type3 and for nop
> profiles instead of setting it to NULL.
>
> agreed ?

Sure. Whatever works.

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
