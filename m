Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4686745B
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 19:36:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z+7wkgPULcAO5WyomwahYYQx4LmCsyia8NZ3tSMQ2gM=; b=o+c7hsqVo2SktGQ0PMY1u8t6U
	VNHaOva8PE2CLwGf68cB3z88iSMgwdPLnI3HpSNJEmDzdAWRJPnpLKr3FvLEB/DTwDm8Ejq8/bOmk
	gQhsu1a6lVNvBPPjkcMkluCtm5B7lD5BEAhG0T4YN3Td2tY9ztVICqCWn8/pIDfuQ/TbIGNZyBfeD
	iOYWNuxGIQJICjopX0lYG4FOmdkq0jnYNgBFPjahEDY7s0B/W2xap0cTW8YXuDt4WzgPKBY+Ha4bl
	dAP1GguufhP0KVmVHijuq6mBTWRRG7YETebkxUB0lIitpb84AUzVDWb5HjGmDKiq1KvsdrG8xUxDo
	ciAtmd1Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlzSq-0002Ki-Je; Fri, 12 Jul 2019 17:36:08 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlzSh-0002KE-UT
 for linux-nvme@lists.infradead.org; Fri, 12 Jul 2019 17:36:01 +0000
Received: by mail-pf1-f193.google.com with SMTP id 19so4599938pfa.4
 for <linux-nvme@lists.infradead.org>; Fri, 12 Jul 2019 10:35:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=axSvuzMwueVarNPOMRNToZl4dbJU5wcCQ6XbR34gdfQ=;
 b=dWOQR7WLLO5ziwbYE+hQtCdeyUF0P0HCDGbCieYVeKdWAn71aoquLVV5gC8SenRVrH
 ppj0Vg5tQaSf6ynZY1nIehIoIVJq0zTXOSVkwWoFpLQRaPf4B9BimHljL4Y33OlE7qk9
 9ppbgptyzGNx6v6PTAif2ssNuugFRrVf9ZE9GpsA+2BxBHvZpeCcychikORe41pL5FU3
 fqhnhTlv86YkvldqnpIbjzb4PpdXAUWFQTG3ab8rVkroHeWzPrciGjWZRQP90Qnk1vxR
 qEyI+imgVdPFqnrz/jSfYmR/sFZ1PqeGYHE6sZDCfAmxR4N0z4lChbQvFnJvDt4Pxo8z
 yySg==
X-Gm-Message-State: APjAAAWA710Ov77Wg/3Sb58e99npsvpPOPV233GLxrVVIDStMNKF2xxX
 0IeHvLpKsbMk7mzluGjWmeYUqqYh
X-Google-Smtp-Source: APXvYqzNXaI70yV4T2pbgDnyoAMXdxQGYQ4ZKWoCG2jVDWRyzJA99PIve2p3VHEbQR4A2Vk3f2rhsw==
X-Received: by 2002:a17:90b:f12:: with SMTP id
 br18mr12671085pjb.127.1562952958901; 
 Fri, 12 Jul 2019 10:35:58 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:10a0:43d6:25f7:7bc3?
 ([2601:647:4800:973f:10a0:43d6:25f7:7bc3])
 by smtp.gmail.com with ESMTPSA id a6sm1416071pfa.162.2019.07.12.10.35.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 12 Jul 2019 10:35:58 -0700 (PDT)
Subject: Re: [PATCH rfc v2 09/10] nvme-cli: add --quiet option
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190712003140.16221-1-jsmart2021@gmail.com>
 <20190712003140.16221-10-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <46dcab64-c4f9-74dc-b75c-4f4b8926051d@grimberg.me>
Date: Fri, 12 Jul 2019 10:35:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190712003140.16221-10-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_103559_985949_24BC7493 
X-CRM114-Status: GOOD (  22.63  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> From: Sagi Grimberg <sagi@grimberg.me>
> 
> Now we are going to have discovery log change events, so
> instead of trying to figure out which NVM subsystem ports
> are already connected, we let the driver do that and
> only suppress the failure messages.
> 
> Example:
>    nvme connect-all ... --quiet
> 
> This option will be used by the discovery log change corresponding
> udev rule.
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> Reviewed-by: James Smart <jsmart2021@gmail.com>
> Reviewed-by: Hannes Reinecke <hare@suse.com>
> Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
>   fabrics.c | 21 ++++++++++++++-------
>   1 file changed, 14 insertions(+), 7 deletions(-)
> 
> diff --git a/fabrics.c b/fabrics.c
> index e101ead..13e2cf8 100644
> --- a/fabrics.c
> +++ b/fabrics.c
> @@ -67,6 +67,7 @@ static struct config {
>   	int  hdr_digest;
>   	int  data_digest;
>   	bool persistent;
> +	bool quiet;
>   } cfg = { NULL };
>   
>   #define BUF_SIZE		4096
> @@ -219,9 +220,11 @@ static int add_ctrl(const char *argstr)
>   		goto out;
>   	}
>   
> -	if (write(fd, argstr, len) != len) {
> -		fprintf(stderr, "Failed to write to %s: %s\n",
> -			 PATH_NVME_FABRICS, strerror(errno));
> +	ret = write(fd, argstr, len);
> +	if (ret != len) {
> +		if (errno != EALREADY || !cfg.quiet)
> +			fprintf(stderr, "Failed to write to %s: %s\n",
> +				 PATH_NVME_FABRICS, strerror(errno));
>   		ret = -errno;
>   		goto out_close;
>   	}
> @@ -855,10 +858,13 @@ static int connect_ctrls(struct nvmf_disc_rsp_page_hdr *log, int numrec)
>   		/* already connected print message	*/
>   		if (instance == -EALREADY) {
>   			const char *traddr = log->entries[i].traddr;
> -			fprintf(stderr,
> -				"traddr=%.*s is already connected\n",
> -				space_strip_len(NVMF_TRADDR_SIZE, traddr),
> -				traddr);
> +
> +			if (!cfg.quiet)
> +				fprintf(stderr,
> +					"traddr=%.*s is already connected\n",
> +					space_strip_len(NVMF_TRADDR_SIZE,
> +							traddr),
> +					traddr);
>   			continue;
>   		}
>   
> @@ -1063,6 +1069,7 @@ int discover(const char *desc, int argc, char **argv, bool connect)
>   		{"nr-poll-queues",  'P', "LIST", CFG_INT, &cfg.nr_poll_queues,    required_argument, "number of poll queues to use (default 0)" },
>   		{"queue-size",      'Q', "LIST", CFG_INT, &cfg.queue_size,      required_argument, "number of io queue elements to use (default 128)" },
>   		{"persistent",  'p', "LIST", CFG_NONE, &cfg.persistent,  no_argument, "persistent discovery connection" },
> +		{"quiet",       'Q', "LIST", CFG_NONE, &cfg.quiet,  no_argument, "suppress already connected errors" },

Q is already a short-arg (queue-size). Lets have it 'S' (stand for 
Suppress). Also, when I tested it locally for some reason it did not
take:
--
Jul 12 17:30:00 nvmc systemd[1]: Started NVMf auto-connect scan upon 
nvme discovery controller Events.
Jul 12 17:30:00 nvmc sh[2767]: Failed to write to /dev/nvme-fabrics: 
Operation already in progress
Jul 12 17:30:00 nvmc sh[2767]: traddr=192.168.123.1 is already connected
Jul 12 17:30:00 nvmc kernel: nvme nvme2: creating 4 I/O queues.
Jul 12 17:30:00 nvmc kernel: nvme nvme2: mapped 4/0/0 default/read/poll 
queues.
Jul 12 17:30:00 nvmc kernel: nvme nvme2: new ctrl: NQN "testnqn2", addr 
192.168.123.1:8009
--

Adding print to add_ctrl:
Jul 12 17:30:00 nvmc sh[2767]: errno 114 quiet 0

When I pass it manually it works, but not from udev... Not sure what
is going on...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
