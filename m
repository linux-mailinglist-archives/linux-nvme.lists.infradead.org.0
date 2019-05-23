Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C01E8274F7
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 06:15:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cICqa5+P+8hDU5mA3yRD6fjFXnYyGH6ba2YcJg6uqlA=; b=PY0KXOl9Uf5Jjv
	PCpIu1LBOuI7JxB9idxGwjTB0oZ/A8i17KPZf78m26JdnubbF6V+iTL8tne+rsgvePzuFwszRY1WA
	hwsdJ+XFrLzVPg596JLpE56b7BwJnHSF6ejIL10UFaTF7uVa8SXWdwkvODdx0rZOGeHSzZooVQ65g
	87ZZp/TzJlYDTeDdkPj5P+kOdgyiKEijAeXpRG3AwaTneuI3bZD1ObU2p407pFt8dXC3onzJKKZvE
	4wsvfVrFh8B+nwiaf3eeVb5S5X9sAvTxAD9Yekc5gp/wh4AO+Be2ifNSndYRgLEJI9I1bpsz6p1pO
	tGPZjTszTuApE1DBZE3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTf8d-0002bl-Bl; Thu, 23 May 2019 04:15:31 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTf8Y-0002bK-EA
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 04:15:27 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20190523041523epoutp03b300eeef915183f02a912589d4e9ea53~hNLrb_rjS2784027840epoutp03c
 for <linux-nvme@lists.infradead.org>; Thu, 23 May 2019 04:15:23 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20190523041523epoutp03b300eeef915183f02a912589d4e9ea53~hNLrb_rjS2784027840epoutp03c
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1558584923;
 bh=NeMBAGjxVjixVQk8Pi6TWDsfHzxxbkzyZauYchMkKyk=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=LvU7ElxAYIGjsLwFBrbJvu0BDfNlIZ09Bg3zzbCjhe5ZTdYPhd0fJPaRwqpnROHIB
 LKpMIjcfPWyPTIuXjICJaksKsFKPJ4bxHSmxVUMUSC2hqh5ybsZC6LSzT+oCGx7wKr
 cRieddZfCTeck5zHegtFQjAPigHwycjRM4BdD3Z8=
Received: from epsmges2p1.samsung.com (unknown [182.195.40.181]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTP id
 20190523041521epcas2p2e5339403e2782ded4d1cf035c18a8958~hNLpbuzX20385203852epcas2p2T;
 Thu, 23 May 2019 04:15:21 +0000 (GMT)
X-AuditID: b6c32a45-d5fff70000001063-68-5ce61e571b00
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
 epsmges2p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 8F.93.04195.75E16EC5; Thu, 23 May 2019 13:15:19 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH 2/9] nvme: update description for "nvme list" command
From: Minwoo Im <minwoo.im@samsung.com>
To: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "kbusch@kernel.org" <kbusch@kernel.org>, "sagi@grimberg.me"
 <sagi@grimberg.me>, "hch@lst.de" <hch@lst.de>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <1558543193-24752-3-git-send-email-maxg@mellanox.com>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190523041519epcms2p69ee740b83489426e57f2ebb442fea2b3@epcms2p6>
Date: Thu, 23 May 2019 13:15:19 +0900
X-CMS-MailID: 20190523041519epcms2p69ee740b83489426e57f2ebb442fea2b3
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprGJsWRmVeSWpSXmKPExsWy7bCmmW643LMYg08b5CxWrj7KZDHp0DVG
 i/nLnrJbLD/+j8ni9KMD7BbrXr9nsbhzfh2bA7vH+XsbWTw2repk89i8pN5j980GNo9n0w8z
 eXx8eoslgC0qxyYjNTEltUghNS85PyUzL91WyTs43jne1MzAUNfQ0sJcSSEvMTfVVsnFJ0DX
 LTMH6BYlhbLEnFKgUEBicbGSvp1NUX5pSapCRn5xia1SakFKToGhYYFecWJucWleul5yfq6V
 oYGBkSlQZUJOxuu1F5kLvCp2zjnJ3sBo28XIySEhYCLRMm87cxcjF4eQwA5GiZX3XrB0MXJw
 8AoISvzdIQxSIyzgKXF2/VY2kLCQgLzEj1cGEGFNiXe7z7CC2GwC6hINU1+xgNgiAlsYJRZM
 zgEZySwwnVFi/YV7jBC7eCVmtD9lgbClJbYv3woW5xRwkpi95xNUXFTi5uq37DD2+2PzoXpF
 JFrvnWWGsAUlHvzczQhyj4SAhMS9d3YQZr3ElhUWIGslBFoYJW68WQvVqi/R+Pwj2HheAV+J
 R4uPgMVZBFQlvmyYDbXWRaJv6gOwtcxAL25/O4cZZCYz0I/rd+lDjFeWOHKLBaKCT6Lj8F92
 mKd2zHvCBGErS3w8dAjqSEmJ5Zdes0HYHhLP+vqZIIF8kFHi/LXljBMYFWYhwnkWksWzEBYv
 YGRexSiWWlCcm55abFRgiByxmxjBaVLLdQfjjHM+hxgFOBiVeHgzzJ/GCLEmlhVX5h5ilOBg
 VhLhPX3qUYwQb0piZVVqUX58UWlOavEhRlOg/ycyS4km5wNTeF5JvKGpkZmZgaWphamZkYWS
 OO9m7psxQgLpiSWp2ampBalFMH1MHJxSDYzdvIfmzlUVflDlKXcy6epy77d3gpeUl8+SuSv/
 gNUyY2Z60rrrGhuOqO5RM13R+nzRi1y92bILmLas2SKYLZo13aYlbtGkB492Xr/t+z/jzYKV
 G45XFh9Kn7jty4n3fds5Pt9w3KrCry72ku+EX9/unzlb1jpFJX69adzWa34+vrPIYsX1N8+N
 lViKMxINtZiLihMBcfb/EKkDAAA=
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190522164028epcas5p23fda4f18eb2d8a2e407670f87c5a035b
References: <1558543193-24752-3-git-send-email-maxg@mellanox.com>
 <1558543193-24752-1-git-send-email-maxg@mellanox.com>
 <CGME20190522164028epcas5p23fda4f18eb2d8a2e407670f87c5a035b@epcms2p6>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_211526_647616_4FE73570 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Reply-To: minwoo.im@samsung.com
Cc: "maxg@mellanox.com" <maxg@mellanox.com>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "shlomin@mellanox.com" <shlomin@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This looks good to me.

Reviewed-by: Minwoo Im <minwoo.im@samsung.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
