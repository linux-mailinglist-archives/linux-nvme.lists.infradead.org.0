Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 343DD248F3
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 09:27:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iXVjGCJLUqxvjwDjGMGI8Qo6H6xDL823XcFCfpqazDI=; b=FfleecmMHHUwq3
	BfTY2KSusLvSgYXyjuDts1ySFZlXEPbmNaBRdfzwCAwhThyqVu1XUt8TO/ptzJkUpHdoF77fXuG9T
	zeJOf5NZVm5CWaWRWeLEmLJwMDVoWpN3hR4g6PuO5Bocl25r2fT74eHd43BMNwILS3w27meE04E19
	WmBnaEPyKIJEiF/70NMd7jGOD/gpHGws/nP5qeIjFYnIWYQLVkbGstoQZ8quT0KVFiqKaMngjQ+q0
	I3z/ZjEzQuIAikhoTpPsrEfh5OYKjmpX93J19o94y3wh1OBN+kXXRab0bZuGPA4r5eFder4/6b93l
	eYZTzquUUIrE4ozz6YEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSzAx-0005H4-1E; Tue, 21 May 2019 07:27:07 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzAq-0005Gi-OB
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 07:27:02 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20190521072656epoutp01f0d9dcb830031f53bfaf0820f584bac9~gogWeuN3w3158331583epoutp01f
 for <linux-nvme@lists.infradead.org>; Tue, 21 May 2019 07:26:56 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20190521072656epoutp01f0d9dcb830031f53bfaf0820f584bac9~gogWeuN3w3158331583epoutp01f
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1558423616;
 bh=O8Eq5C6lJaJaAkj/xcZbnmMIkhHr7sg3lFPwO2x0v0A=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=D1ucE2O8IWVzb+4C95LZyuGsKtvTwz2gCq0zLYE934QtkFRnkTUrVP6CyMbdplzM1
 LMvavX70n5FhAHTetGez+VL4JmKg7c6OLj/LK90cbFoYHYAeQdrCoLPKua5p4udusd
 hknj94CNgeDnyFMxcii192kKEFb25EG8p0IaEpQA=
Received: from epsmges2p2.samsung.com (unknown [182.195.40.183]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTP id
 20190521072654epcas2p123ce6ef674b46ca703ae80003aba465f~gogUvBHQ50746407464epcas2p1U;
 Tue, 21 May 2019 07:26:54 +0000 (GMT)
X-AuditID: b6c32a46-d63ff7000000106f-f6-5ce3a83eadb4
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
 epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 91.B5.04207.E38A3EC5; Tue, 21 May 2019 16:26:54 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH] nvme: Fix known effects
From: Minwoo Im <minwoo.im@samsung.com>
To: Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <20190517161346.25102-1-keith.busch@intel.com>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190521072654epcms2p3987b1f3aae37b9e7b84abccfce4d4a21@epcms2p3>
Date: Tue, 21 May 2019 16:26:54 +0900
X-CMS-MailID: 20190521072654epcms2p3987b1f3aae37b9e7b84abccfce4d4a21
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpjk+LIzCtJLcpLzFFi42LZdljTTNduxeMYg4ltPBYrVx9lsrh39AuT
 xfxlT9ktdj9bwWSx7vV7FgdWj/P3NrJ4LN7zkslj85J6j903G9g83u+7yhbAGpVjk5GamJJa
 pJCal5yfkpmXbqvkHRzvHG9qZmCoa2hpYa6kkJeYm2qr5OIToOuWmQO0XEmhLDGnFCgUkFhc
 rKRvZ1OUX1qSqpCRX1xiq5RakJJTYGhYoFecmFtcmpeul5yfa2VoYGBkClSZkJPRd/Y/S4Fr
 xeHfZ1kbGC27GDk5JARMJCbNf8naxcjFISSwg1Gi69glli5GDg5eAUGJvzuEQWqEBXQkFu38
 wAYSFhKQl/jxygAirCnxbvcZVhCbTUBdomHqKxaQMSICnYwSs1p3M4IkmAX8JZ5vXc8KsYtX
 Ykb7UxYIW1pi+/KtYDWcAtYSF/tnskHERSVurn7LDmO/PzafEcIWkWi9d5YZwhaUePATZD4H
 kC0hce+dHYRZL7FlhQXICRICLYwSN96shWrVl2h8/hFsLa+Ar8TzJVvAxrAIqEqc//IS6jQX
 ibaXr1kgTpaX2P52DjPITGagH9fv0ocYryxx5BZUBZ9Ex+G/7DBP7Zj3hAnCVpb4eOgQ1JGS
 EssvvWaDaPWQ+PlKAxLGTYwSt7dsYJ/AqDALEcyzkOydhbB3ASPzKkax1ILi3PTUYqMCI+R4
 3cQIToNabjsYl5zzOcQowMGoxMObMeVRjBBrYllxZe4hRgkOZiUR3tOngEK8KYmVValF+fFF
 pTmpxYcYTYHen8gsJZqcD0zReSXxhqZGZmYGlqYWpmZGFkrivJu4b8YICaQnlqRmp6YWpBbB
 9DFxcEo1MOo8XNJqe/h2fNi0DZsmO/x6qbi0/dC9XVd99ofzT1t1W3o5X+95T/NlQksd1xke
 TA4qveH6Oe68Rt7KxQ1bb9mp/2LPYlm2O/hrai4bU3O4XczdtQwrn0gLhIhOOf98q/He04tX
 nmsMm2R4Z2rkno88THoPFSdIPW59WvvFOHqLq7Tt9Xhfx+NKLMUZiYZazEXFiQAYE+K5mQMA
 AA==
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190517161939epcas5p2993c25cc84f606cfa595cecd73698c25
References: <20190517161346.25102-1-keith.busch@intel.com>
 <CGME20190517161939epcas5p2993c25cc84f606cfa595cecd73698c25@epcms2p3>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_002701_091067_E231333A 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <keith.busch@intel.com>, Maxim Levitsky <mlevitsk@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good to me.

Reviewed-by: Minwoo Im <minwoo.im@samsung.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
