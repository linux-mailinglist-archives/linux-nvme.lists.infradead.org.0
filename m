Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E5C274F6
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 06:14:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hIVAXYMg3U8fBgVro/kAnqwuD3nZ/dn3uVt1OBEhGME=; b=Bh54MqqLBhTluK
	rxmv028sBnFIi36rhrObYm7TMKurDG0xEwVFRsZypmurCLPx27efM6KR7Pwm9bVcPlUmolWFaAAaR
	QBxvaQf1z5t11T1o3qALe2a4aniOplDNL31n+IoGsavxSI4MD70vLVefO2nJW0wHbIoSuHRGliZkt
	XXrZUMpbAvy2VGUTeAJ5DgwXr8aYCdj4Keg54RynM62Pzsk2B0wO3w6UO9OHyadPtK9IeCy1VVSCc
	lI8EyYER3/MzI2fxosHmWn9XOFMiRde+aF6dQmZ4BWjzpfymzl7wmZdPoMojPS79AZjQ+GoYFZr2e
	PfwBvdX3a4qwvJJMbG8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTf7P-00016B-9L; Thu, 23 May 2019 04:14:15 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTf7J-00015n-Li
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 04:14:12 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20190523041405epoutp01e7966df8016acc79d4adc08290f08aeb~hNKiwze9A2292022920epoutp013
 for <linux-nvme@lists.infradead.org>; Thu, 23 May 2019 04:14:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20190523041405epoutp01e7966df8016acc79d4adc08290f08aeb~hNKiwze9A2292022920epoutp013
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1558584845;
 bh=BpX4mkYc/LouVaufcf7Uavp+eWPVTFDwWIESMvJG4tw=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=tBJZCWrdnffHrk/uTy2ELrS9Ac+zmAZCf1mmV/uRTKylo2reQw+WvvAlz0unbeVPk
 O0ZSZJzanQIw6mc2es/Sj3CVTLQmzE/GkpSEHggVwPwI1Dk1Zi3rEVxqwKvIXi86Mx
 POsn7viRpjTyY6HqX0ifCjXNNPb6Wpv2e4AhbGes=
Received: from epsmges2p3.samsung.com (unknown [182.195.40.191]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTP id
 20190523041403epcas2p22e138c02103520fe825103c4bcbcdbe7~hNKg-69zY0385203852epcas2p2D;
 Thu, 23 May 2019 04:14:03 +0000 (GMT)
X-AuditID: b6c32a47-133ff7000000106e-36-5ce61e09e1d5
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
 epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 AF.65.04206.90E16EC5; Thu, 23 May 2019 13:14:01 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH 1/9] nvme: update list-ns nsid option
From: Minwoo Im <minwoo.im@samsung.com>
To: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "kbusch@kernel.org" <kbusch@kernel.org>, "sagi@grimberg.me"
 <sagi@grimberg.me>, "hch@lst.de" <hch@lst.de>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <1558543193-24752-2-git-send-email-maxg@mellanox.com>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190523041400epcms2p3e31eb5a97973c434607c55b0c31dd8c1@epcms2p3>
Date: Thu, 23 May 2019 13:14:00 +0900
X-CMS-MailID: 20190523041400epcms2p3e31eb5a97973c434607c55b0c31dd8c1
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRjm2zmenWmr4zR7M6pxolLxslmbR83u5CglQUEocZ30sFlnF3Zm
 VBQaZBeJ7qbZRUFJM1TyOhIhZ5akmWmIkxCx5qIy84dQP7psHiX/PTw8z/t8z/u9JKYoIULJ
 PLOds5lZnib88bbucG2UbN1UlsrVRzCPn/RImJvOEcRUPHJLmZpXfyRM3+RzKdPwdQZnPrxt
 IHZKdW/Hn+K6prrLhK65ukDX4SokdFOl3RLdrHsMTyMO8duMHJvL2ZScOceSm2c2JNEH0vV7
 9BqtSh2ljmfiaKWZNXFJ9N6UtKh9ebz3LbTyBMvne6k0VhDomO3bbJZ8O6c0WgR7Es1Zc3mr
 Wm2NFliTkG82ROdYTAlqlSpW41Ue4Y2/PvDW1qCT7wfLpYWoekUxkpFAbYWrfQ5UjPxJBeVA
 cKPqh18xIkk5FQi/HUE+TRAVD9caZ5CPVlDr4ecXlUiHw/eOfj8fJqjNUFjyBffhYKoFQeUt
 3jcSo0oRNA6OIzFLDmUX3biI10B7Tev8TBm1G0Ynzoj0SnA9mZYu4pmXFQvWYCgaf4OJOBAm
 fnXMW4ECGP++XYQF0FLL+FKBOo9g9Fv9gjUGznlmcbFUKjTNJvhonNoIHteQnyjZC2UP++dT
 MW/B9un7mE+OeRs2PosRp2+AF2O4qFgOl7p/SxcrOR5+koh4A8w6nQtvXA01Q18JEevgzlw9
 Jq64C0HRlV7sOlKW/99y+ZLg8v/BlQirQyGcVTAZOCHWumXpvzah+ZOMSHagtoEUJ6JIRC+T
 G+PcWQo/9oRwyuREQGJ0sLzv9WSWQp7LnjrN2Sx6Wz7PCU6k8fa/gYWuzLF4D9xs16s1sVqt
 Kl7DaLSxDL1K3hTgylJQBtbOHec4K2db9ElIWWghOh0SWVLahleldkYbLKNd1z5H1r1Sjhxs
 MKYHpe+4Lilr7A9sSZx4oO35ExA2Z1o/OpDZvqvqbjHhyT52rz/9cMimmNuRGfZ3Bo9yGMKm
 hjMyBs/+TdbvslkS7sZNZmcebbXu75y+cOtj7dqdAbKS5I4X6sy5xN0ef/bHwWadu6eXxgUj
 q47AbAL7D14hZnOoAwAA
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190522164022epcas4p14ccd01e368a20456b4e2d0cf06644adb
References: <1558543193-24752-2-git-send-email-maxg@mellanox.com>
 <1558543193-24752-1-git-send-email-maxg@mellanox.com>
 <CGME20190522164022epcas4p14ccd01e368a20456b4e2d0cf06644adb@epcms2p3>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_211410_054818_2C2189B7 
X-CRM114-Status: GOOD (  28.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
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

> Subject: [PATCH 1/9] nvme: update list-ns nsid option
> 
> This commit updates the optional nsid argument to define the wanted
> nsid for start, instead of starting from nsid + 1. E.g. in case we've
> wanted to get the list of namespaces starting from 1, before this
> commit, we used the "--namespace-id=0" option. Nsid 0 is not valid in
> NVMe spec, thus change it to start counting from the given nsid.
> 
> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
> ---
>  nvme.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/nvme.c b/nvme.c
> index 9819fcb..de77956 100644
> --- a/nvme.c
> +++ b/nvme.c
> @@ -950,9 +950,9 @@ close_fd:
> 
>  static int list_ns(int argc, char **argv, struct command *cmd, struct plugin
> *plugin)
>  {
> -	const char *desc = "For the specified device, show the "\
> -		"namespace list in a NVMe subsystem, optionally starting
> with a given namespace";
> -	const char *namespace_id = "namespace number returned list
> should to start after";
> +	const char *desc = "For the specified controller handle, show the "\
> +		"namespace list in the associated NVMe subsystem,
> optionally starting with a given nsid.";
> +	const char *namespace_id = "first nsid returned list should start
> from";
>  	const char *all = "show all namespaces in the subsystem, whether
> attached or inactive";
>  	int err, i, fd;
>  	__u32 ns_list[1024];
> @@ -963,7 +963,7 @@ static int list_ns(int argc, char **argv, struct command
> *cmd, struct plugin *pl
>  	};
> 
>  	struct config cfg = {
> -		.namespace_id = 0,
> +		.namespace_id = 1,
>  	};
> 
>  	const struct argconfig_commandline_options
> command_line_options[] = {
> @@ -976,7 +976,8 @@ static int list_ns(int argc, char **argv, struct command
> *cmd, struct plugin *pl
>  	if (fd < 0)
>  		return fd;
> 

Can we have invalid --namespace-id check here?

if (!cfg.namespace_id)
	return -EINVAL;

Otherwise, It looks good to me.

Reviewed-by: Minwoo Im <minwoo.im@samsung.com>

> -	err = nvme_identify_ns_list(fd, cfg.namespace_id, !!cfg.all, ns_list);
> +	err = nvme_identify_ns_list(fd, cfg.namespace_id - 1, !!cfg.all,
> +				    ns_list);
>  	if (!err) {
>  		for (i = 0; i < 1024; i++)
>  			if (ns_list[i])
> --
> 1.8.3.1
> 
> 
> _______________________________________________
> Linux-nvme mailing list
> Linux-nvme@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-nvme

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
