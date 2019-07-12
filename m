Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B37D66304
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 02:47:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jUCcRsYxxLY1Rk8DfLfIsX3Xs0sdNJlMFjW84/RMKiI=; b=RpaZwYd4lCboEcoDZ9Hk1GGs0
	4m27EnBUaDMllzDb8Feh+SiZ6ignr9EocAmHPB+orwj0dewgySUp0elFf35oAPQCZXi2ios5ym9i/
	uULHlFM14OkiUASGPeU0SA5Ny3dMEWQuZnY8fbrlSJS7V2aRlu3/0GFf0VfWp+1H5SfstBw8ZxSAs
	hlKTZ4YZ10oQ7uTB6ha2u71JKGDOra+Xru/h4bRGuGnyeBDCoRlVgrgZHaiBcvx7oifUJFaWt38Ka
	1Ieb85+GVrSaC1OSmdJBjGk6tgN1pUbq8q1IdnOJ/JygYB5L1Y4KIcd2O/s+sLBXMWFsQUGkJE08N
	1ADcQk1Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hljic-0001pq-79; Fri, 12 Jul 2019 00:47:22 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hljiM-0001pE-P5
 for linux-nvme@lists.infradead.org; Fri, 12 Jul 2019 00:47:08 +0000
Received: by mail-ot1-f68.google.com with SMTP id h59so3883335otb.10
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 17:47:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NDbgx03gpItbUthozX32Whr8CYhkkyQ9/GzEy5VR/vQ=;
 b=a0zqxGNbqgP61UJNlnZt2zkZ+r0p063HtT3YAEgVC11q7FPCMrpA9kHEr7aFayttQM
 Vbyak71SmBf/pqK2tMM1CbFiFiTjm1MVkFguq+QKuibcc3cQq1a+laBumFVhVmGknDwf
 aw6SSUoAfrpxeRC/ZB7249zE2yILVaqnNersGr1e5rNxYO0MXlc20lXmJ5YNud82CwPW
 x3KHytdxT8ndiIICm9vOxu55ZVerr0G5r7HglP0UlS5OrPePeqfhb5gcWbQ9qO5L4cfP
 4o7zznHSvwUPkxMWl1GU+83Mat76W9SewJKeFlWmO1sPVrew4pgGPseYrOdogp0Zuhyv
 nVag==
X-Gm-Message-State: APjAAAXkmWuxJOMAm41/Odtbt+x4aAIosqXvs15UnzO35HK5kiuQ2T5A
 q2baPLy64aXSWKcfCLljpjw=
X-Google-Smtp-Source: APXvYqz9GG0s/ytrLd9sXJiUMX1tFCekBhyk32urjivI+qB0eJel7udRXQcdB2c+Kd9tumVCi1GhQw==
X-Received: by 2002:a9d:7348:: with SMTP id l8mr6229633otk.111.1562892425267; 
 Thu, 11 Jul 2019 17:47:05 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id s1sm2498153otq.28.2019.07.11.17.47.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 17:47:04 -0700 (PDT)
Subject: Re: [PATCH rfc v2 05/10] nvme-cli: extend ctrl_list_item for connect
 attributes
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190712003140.16221-1-jsmart2021@gmail.com>
 <20190712003140.16221-6-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <6647e40b-cfc9-46e3-cd11-aeaaec8eeff6@grimberg.me>
Date: Thu, 11 Jul 2019 17:47:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190712003140.16221-6-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_174706_815928_F1C2DDAE 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Hannes Reinecke <hare@suse.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> +char *__parse_connect_arg(char *conargs, const char delim, const char *fieldnm)
> +{
> +	char *s, *e;
> +	size_t cnt;
> +
> +	/*
> +	 * There are field name overlaps: traddr and host_traddr.
> +	 * By chance, both connect arg strings are set up to
> +	 * have traddr field followed by host_traddr field. Thus field
> +	 * name matching doesn't overlap in the searches. Technically,
> +	 * as is, the loop and delimiter checking isn't necessary.
> +	 * However, better to be prepared.
> +	 */
> +	do {
> +		s = strstr(conargs, fieldnm);

Any reason not to use the normal strsep for loop?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
