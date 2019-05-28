Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E9162CBF4
	for <lists+linux-nvme@lfdr.de>; Tue, 28 May 2019 18:29:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CZ5q1NgSEjt5SAwVGqczPO52lCFniKlMRgGhYTuI1Xo=; b=khhHYB44bc3AmWeEOmZGuKJoY
	NzfkEgGgj+IenWvJ/RrwR7/LZsOfzWQtNKTFPPzJX8WYqrfZAz7Bjmv2FqHKMo5mWxyCbcmQ3egYM
	ArkhSIbp+3Wfp5IbXy5xCgBICL6B5dwxrrMpqUhQ7aD2wN5wkuw84SqSfkc2XwRDgyeCvByuVmmeJ
	4taAY+RKokkw/lXkUMIxJ9s9MCcER6jHu/wy7Rgy59ugWne6IeKDxm0wp0TBTFo9jv0V6HBsyEtRZ
	b4HkNiYRvA0N3NGS6EzmL7v6jnuSYMVL5nenqWOCaQ5GemH4aJas/8vxoJbibMv8W3TXK49kI9pUQ
	gtlvuOwUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVeyH-0000bM-LW; Tue, 28 May 2019 16:29:05 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVeyB-0000b0-1k
 for linux-nvme@lists.infradead.org; Tue, 28 May 2019 16:29:00 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4SGSqL6165919
 for <linux-nvme@lists.infradead.org>; Tue, 28 May 2019 16:28:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=ubJYaPLWc/6V+8XT3Fy7ectXgfT6hfVx7EQo07QCIO4=;
 b=iG0Mfudc+AtdbV36Eoy6TzqLBUqBmyx4sss77Uzq5KdlHg1bFxj5FyTSOi70V8tr3Nw7
 xRysID0D8glbv7Bytpr8un1O0Jj9vz4F7WxGH1dxXe4T5Ko7WWuHcYeSyJiXjhpbEAci
 9W85NhpgBtA+VQsrkG8LKE+7dUzKt2CxuNGIdEt8RZpTFNk2E2Rj5BFYapSW3PLyX6j6
 5F1EMc3SBbd+ruD4NbB/5pPUSC1IBUknqHvLhNTE+ZKYsHXotDe+H7jdbvN4XSl01/74
 ta4V4LYs6s6Joq8dp/5Y+3Ir5mvvtDPiu3wU46I3nzz4Ms/g+rQqTb3g0g6DCDiZ7QE7 kw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2spw4tcegx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Tue, 28 May 2019 16:28:55 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4SGSQpC165846
 for <linux-nvme@lists.infradead.org>; Tue, 28 May 2019 16:28:54 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2sqh7377mc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Tue, 28 May 2019 16:28:54 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x4SGSre4008037
 for <linux-nvme@lists.infradead.org>; Tue, 28 May 2019 16:28:53 GMT
Received: from [192.168.1.126] (/47.220.71.223)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 28 May 2019 09:28:52 -0700
Subject: Re: [GIT PULL] nvme fixes for 5.2
To: linux-nvme@lists.infradead.org
References: <20190516082541.GA19383@infradead.org>
From: John Donnelly <John.P.Donnelly@Oracle.com>
Message-ID: <5175ce5c-1943-a167-52f5-094a3d2dc4a4@Oracle.com>
Date: Tue, 28 May 2019 11:28:52 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190516082541.GA19383@infradead.org>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9270
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=4
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=922
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905280105
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9270
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=4 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=946 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905280105
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_092859_194923_58A8344A 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/16/19 3:25 AM, Christoph Hellwig wrote:
> The following changes since commit 936b33f7243fa1e54c8f4f2febd3472cc00e66fd:
> 
>    brd: add cond_resched to brd_free_pages (2019-05-09 12:51:27 -0600)
> 
> are available in the Git repository at:
> 
>    git://git.infradead.org/nvme.git nvme-5.2
> 
> for you to fetch changes up to 1b1031ca63b2ce1d3b664b35b77ec94e458693e9:
> 
>    nvme: validate cntlid during controller initialisation (2019-05-14 17:19:50 +0200)
> 
> ----------------------------------------------------------------
> Chaitanya Kulkarni (1):
>        nvme: trace all async notice events
> 
> Christoph Hellwig (2):
>        nvme: change locking for the per-subsystem controller list
>    **     nvme: validate cntlid during controller initialisation
> 
> Gustavo A. R. Silva (1):
>        nvme-pci: mark expected switch fall-through
> 
> Hannes Reinecke (2):
>        nvme-fc: use separate work queue to avoid warning
>     **   nvme-multipath: avoid crash on invalid subsystem cntlid enumeration



Hi
   In testing these commits denoted by "**"  I encountered another 
failure during fail-over of two name-spaces:


May 24 21:09:31 interop-57-161 kernel: RIP 0010:kernfs_remove_by_name_ns 
+ 0x7e/0x87
May 24 21:09:31 interop-57-161 kernel: RSP: 0018:ffffb7528937fd70 EFLAGS:
00010246
May 24 21:09:31 interop-57-161 kernel: RAX: 000000000000002c RBX:
0000000000000000 RCX: 0000000000000006
May 24 21:09:31 interop-57-161 kernel: RDX: 0000000000000000 RSI:
0000000000000086 RDI: ffff984560396930
May 24 21:09:31 interop-57-161 kernel: RBP: ffffb7528937fd88 R08:
ffffffff95972a84 R09: 00000000000013b1
May 24 21:09:31 interop-57-161 kernel: R10: 0000000000000000 R11:
0000000000000004 R12: ffff98455e3aa648
May 24 21:09:31 interop-57-161 kernel: R13: ffff9845605be310 R14:
ffff98455f03bc00 R15: ffff9845605be710
May 24 21:09:31 interop-57-161 kernel: FS:  0000000000000000(0000)
GS:ffff984560380000(0000) knlGS:0000000000000000
May 24 21:09:31 interop-57-161 kernel: CS:  0010 DS: 0000 ES: 0000 CR0:
0000000080050033
May 24 21:09:31 interop-57-161 kernel: CR2: 00007f44fa788000 CR3:
000000104940a005 CR4: 00000000007606e0
May 24 21:09:31 interop-57-161 kernel: DR0: 0000000000000000 DR1:
0000000000000000 DR2: 0000000000000000
May 24 21:09:31 interop-57-161 kernel: DR3: 0000000000000000 DR6:
00000000fffe0ff0 DR7: 0000000000000400
May 24 21:09:31 interop-57-161 kernel: PKRU: 55555554
May 24 21:09:31 interop-57-161 kernel: Call Trace:
May 24 21:09:31 interop-57-161 kernel: sysfs_remove_link+0x19/0x2b
May 24 21:09:31 interop-57-161 kernel: nvme_free_ctrl+0xaf/0x120 [nvme_core]
May 24 21:09:31 interop-57-161 kernel: device_release+0x35/0x8b
May 24 21:09:31 interop-57-161 kernel: kobject_cleanup+0x66/0x172
May 24 21:09:31 interop-57-161 kernel: kobject_put+0x2a/0x45
May 24 21:09:31 interop-57-161 kernel: put_device+0x17/0x1a
May 24 21:09:31 interop-57-161 kernel: nvme_delete_ctrl_work+0x86/0x90
[nvme_core]
May 24 21:09:31 interop-57-161 kernel: process_one_work+0x169/0x3a6
May 24 21:09:31 interop-57-161 kernel: worker_thread+0x4d/0x3e5
May 24 21:09:31 interop-57-161 kernel: kthread+0x105/0x138
May 24 21:09:31 interop-57-161 kernel: ? rescuer_thread+0x380/0x375
May 24 21:09:31 interop-57-161 kernel: ? kthread_bind+0x20/0x15
May 24 21:09:31 interop-57-161 kernel: ret_from_fork+0x24/0x49


Does this look familiar ?

Thank you,

John.




_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
