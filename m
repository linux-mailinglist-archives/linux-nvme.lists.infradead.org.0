Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 326A8284E8
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 19:27:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yUFKW9RY9mhaOdfFXAZUnTRkJm0SWf6Ir51J4xk+oGI=; b=OWK/9XpMRMC11h8y1SxTAtPLP
	ezDplb+Assk5qK7u580HnaDcnAiWo2jElJiYzEgpK+DG0XMGg+M6btNQbSUliufjIOc9tzP0eh3Gw
	DPxc8GtuxheYtRZ7YP6hHYOCi7eCreU3j645wviKLERSMSf3Us2yKGW+ilelCnthLmKjqP4PFnMCk
	xQTl1or8EXdL/Kv4v68vGYwfauZxj4SdC06sqhyLLpBwlI0lAReczh/9PePNC/ufvhk+TegtO3zYk
	2/v/5PaUgCvYF1Qh5DTSW22fK1Iwe7X6LOlIpSeS5DUwciQEBkZKt2EgnFj3ZwwzCYRFSpWODVfAu
	mcgW/ulow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTrVC-0005Rz-Lx; Thu, 23 May 2019 17:27:38 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTrV7-0005R8-PS
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 17:27:35 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 10:27:28 -0700
Received: from unknown (HELO [10.232.112.129]) ([10.232.112.129])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 23 May 2019 10:27:27 -0700
Subject: Re: [PATCH 1/9] nvme: update list-ns nsid option
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org,
 kbusch@kernel.org, sagi@grimberg.me, hch@lst.de
References: <1558602058-29434-1-git-send-email-maxg@mellanox.com>
 <1558602058-29434-2-git-send-email-maxg@mellanox.com>
From: "Heitke, Kenneth" <kenneth.heitke@intel.com>
Message-ID: <587b0f6b-d1eb-08d3-1219-63b5144351d0@intel.com>
Date: Thu, 23 May 2019 11:27:27 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1558602058-29434-2-git-send-email-maxg@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_102733_837718_2068049D 
X-CRM114-Status: GOOD (  21.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: shlomin@mellanox.com, martin.petersen@oracle.com, minwoo.im@samsung.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 5/23/2019 3:00 AM, Max Gurtovoy wrote:
> This commit updates the optional nsid argument to define the wanted
> nsid for start, instead of starting from nsid + 1. E.g. in case we've
> wanted to get the list of namespaces starting from 1, before this
> commit, we used the "--namespace-id=0" option. Nsid 0 is not valid in
> NVMe spec, thus change it to start counting from the given nsid.
> 
> Reviewed-by: Minwoo Im <minwoo.im@samsung.com>
> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
> ---
>   nvme.c | 14 +++++++++-----
>   1 file changed, 9 insertions(+), 5 deletions(-)
> 
> diff --git a/nvme.c b/nvme.c
> index 9819fcb..3c1bcb1 100644
> --- a/nvme.c
> +++ b/nvme.c
> @@ -950,9 +950,9 @@ close_fd:
>   
>   static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *plugin)
>   {
> -	const char *desc = "For the specified device, show the "\
> -		"namespace list in a NVMe subsystem, optionally starting with a given namespace";
> -	const char *namespace_id = "namespace number returned list should to start after";
> +	const char *desc = "For the specified controller handle, show the "\
> +		"namespace list in the associated NVMe subsystem, optionally starting with a given nsid.";
> +	const char *namespace_id = "first nsid returned list should start from";
>   	const char *all = "show all namespaces in the subsystem, whether attached or inactive";
>   	int err, i, fd;
>   	__u32 ns_list[1024];
> @@ -963,7 +963,7 @@ static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *pl
>   	};
>   
>   	struct config cfg = {
> -		.namespace_id = 0,
> +		.namespace_id = 1,
>   	};
>   
>   	const struct argconfig_commandline_options command_line_options[] = {
> @@ -976,7 +976,11 @@ static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *pl
>   	if (fd < 0)
>   		return fd;
>   
> -	err = nvme_identify_ns_list(fd, cfg.namespace_id, !!cfg.all, ns_list);
> +	if (!cfg.namespace_id)
> +		return -EINVAL;

Would it be useful to include an error message here? I don't like
playing the guessing game about what I did wrong when I just get the
help message back.

> +
> +	err = nvme_identify_ns_list(fd, cfg.namespace_id - 1, !!cfg.all,
> +				    ns_list);
>   	if (!err) {
>   		for (i = 0; i < 1024; i++)
>   			if (ns_list[i])
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
