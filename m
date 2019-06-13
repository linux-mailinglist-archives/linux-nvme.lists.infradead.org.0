Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C554505E
	for <lists+linux-nvme@lfdr.de>; Fri, 14 Jun 2019 01:58:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AQ+MPOyTjhsTDPHs7B4n9GusRqhSnJKQEnDFy0HLmpQ=; b=Jhwi5VE07itTh/
	DCl4b6j83Bpipg0XZ238vw1VX9AbfHbiXEcVDXmeLyCiRa8qMvJiKAsAqfLo0tizxYNsgMY4bW0pY
	UKIGJrV8A5Mcq7Ytf+4hHOIJfLwmdLEWbWT3eOQ6GwhPp6Je5m+eWmgyrcY/fH5a/XgndUBq0fJ4b
	UsUzHmbViK6UjnfP/IJM6Qs/5TxKk/JWZV/fNiOdtlk0yaheVxA+O5hffwjK8AkSumgyr3dfxjZ6/
	j7fBX2/KQbMmfvd7yb7G3ISgu5h0YwxPjVLKWxvG9MQDN2elaxWrbuZecq5tRT/y8G0v0Pi87PhEG
	XbybgEgc9/sgD0FeIfDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbZbz-0001pm-PH; Thu, 13 Jun 2019 23:58:31 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbZbv-0001p1-6O
 for linux-nvme@lists.infradead.org; Thu, 13 Jun 2019 23:58:28 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5DNuG2x075940;
 Thu, 13 Jun 2019 23:58:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2018-07-02;
 bh=Lbb2sAhasLUOt8UfRNNORh6UrDR9n4upZs+OBWbnqVU=;
 b=HC5Xp9bubAHlD/jY6lfHz/xU78YXUjVH9t+zvgKib8Gq9qhEgqZrj3GMzfUb8P8cY0Cw
 6U63/OJb6Ghwdw8O2G+s9yY/WUDZDGTlqHamEMwJhXUFJPPLizmCWaskxD6DX3wva463
 mVybj5D5juzTXL3MFURiaD7gm8fRp6MmwLYKCTY6phOEuWA3rPoq6oeagXG/P+cVdBgT
 7aI9Tsx9B90h0d7fUt6jPOCQDqGuxYa6BPwKRlrliRbnCT5okas76g7xcrwjKIBBdsQU
 6JXgnf2DWUWkDcz4CpS6Ym09yUZWjIgrHNgsva+8hJJJX43yqLWMvmqPNLJyLy0U6d7u +A== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2t05nr4ght-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 13 Jun 2019 23:58:08 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5DNvkAR002279;
 Thu, 13 Jun 2019 23:58:08 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2t1jpjur4f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 13 Jun 2019 23:58:08 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5DNw4fa031078;
 Thu, 13 Jun 2019 23:58:05 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 13 Jun 2019 16:58:04 -0700
To: Bart Van Assche <bvanassche@acm.org>
Subject: Re: [PATCH v2 3/3] nvme: Set physical block size and optimal I/O size
 according to NVMe 1.4
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20190610210612.103952-1-bvanassche@acm.org>
 <20190610210612.103952-4-bvanassche@acm.org>
 <yq15zpa2que.fsf@oracle.com>
 <fcd3b41c-38b9-4865-05c0-2f96c9382ea5@acm.org>
Date: Thu, 13 Jun 2019 19:57:59 -0400
In-Reply-To: <fcd3b41c-38b9-4865-05c0-2f96c9382ea5@acm.org> (Bart Van Assche's
 message of "Thu, 13 Jun 2019 10:57:18 -0700 (PDT)")
Message-ID: <yq1blz1rqbc.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9287
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=285
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906130179
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9287
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=334 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906130178
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_165827_360420_0B47ECDD 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


Bart,

> Namespace Atomic Write Unit Power Fail (NAWUPF): This field indicates
> the namespace specific size of the write operation guaranteed to be
> written atomically to the NVM during a power fail or error condition.
> A value of 0h indicates that the size for this namespace is the same
> size as that reported in the AWUPF field of the Identify Controller data
> structure. All other values specify a size in terms of logical blocks
> using the same encoding as the AWUPF field.

There's some ambiguity there. But I think you're right that the encoding
statement qualifies it. This means that there is no explicit way of
expressing a NAWUPF of 1 logical block but that is OK since it is
implied.

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
