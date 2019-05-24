Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF5429139
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 08:47:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aDhmCcHNEeDCS5F0gkrAkAkrYa536MQQDstD5gaOelY=; b=PgQatifK0zo5W3Ig0HkbUIt6i
	CP0/HC/YLCT/TqU1+Sg6MdMR8iA44qWJR+WheZjwkC3Wc5J8Ydg5qnDFU1ydVkR8Rlz8kG/4Hk8zQ
	npcF2Vc43FmMVhqJvO60M7VjrxcWvwhYnqSOX3UqCDH+ytQaIzF+kQ0+vLBFfpMJ95GSuJcQ5xv1q
	DtJL6/2MkEBaE/zEJQO7i1fYBdP19bOV6sZpD8olCxiGDk5D0nrFUQc+VyR+Bz+wNvFiNQaspCELK
	/AXTM3hkf54q7R2XRleHWMefqjGzbzy7UCPv1MkbUV7zvVZb/SV19nCyFG/wfC3KEVBcy2scZXgac
	P8QvSNN2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU3yk-0002PJ-Ig; Fri, 24 May 2019 06:46:58 +0000
Received: from mail-pg1-f180.google.com ([209.85.215.180])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU3yf-0002Oc-B2
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 06:46:54 +0000
Received: by mail-pg1-f180.google.com with SMTP id v11so4499967pgl.5
 for <linux-nvme@lists.infradead.org>; Thu, 23 May 2019 23:46:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/Cm3zaPVjjQ93Z5Lsij/x1Z+/viFp+2RkbHubYrwjoc=;
 b=cIL+mBtuE6/+lynU4jSWkzmX5fG8h7b1wfYY6lzl7uMjp8F1iH8LUESDAusO4mNCsj
 vA6aX3sZ1JCV64rvCb9UaUSN7zls5E9ZC26FxGAvx2WL/QP4+sp8k/JlhDnJugMEQQcQ
 9S/sK2y2WBwc2XLK6LahRHwGRR41dfB6k6aywOWA1cXEv3i4/m/evx17Z0xzeEIAcQ+0
 QnfLDDg+TXFq0SHgA6JpKH4eU2foy8yjG0vLwW0vTXhlhPlHCe/bUwbMHX4VOf6FtPjk
 5DQBItnlIOh318smCeWdOn029jm9SWL72a0UDvskpVZs+skvLVXTCk37nFuyttCUnElQ
 +/Tw==
X-Gm-Message-State: APjAAAXSzrvAcizCaKNPBYsK+43eWWcFDxNKHFAyrScIqmPFrLyJ/Rwd
 s4gss2S/M5YdBi0M/XI9b257TxRs
X-Google-Smtp-Source: APXvYqwT0s697PPl2FQbKH2j9bPZ0N/zDuWHoZ4sOWF1SGLBea86PuymMzLTdbNg0o+yYLKgzRhEpg==
X-Received: by 2002:a17:90a:654b:: with SMTP id
 f11mr6951163pjs.34.1558680412162; 
 Thu, 23 May 2019 23:46:52 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:c906:f7f5:4d80:8bc5?
 ([2601:647:4800:973f:c906:f7f5:4d80:8bc5])
 by smtp.gmail.com with ESMTPSA id s66sm3247480pfb.37.2019.05.23.23.46.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 23:46:51 -0700 (PDT)
Subject: Re: [PATCH 1/4] nvme: separate out nvme_ctrl_state_name()
To: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
References: <20190520063624.50338-1-hare@suse.de>
 <20190520063624.50338-2-hare@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <58613917-e96b-a325-7de4-75eaf8a2a138@grimberg.me>
Date: Thu, 23 May 2019 23:46:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190520063624.50338-2-hare@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_234653_375318_6D6D6C1D 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.180 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> +const char *nvme_ctrl_state_name(struct nvme_ctrl *ctrl)
> +{
> +	if ((unsigned)ctrl->state < ARRAY_SIZE(nvme_ctrl_state_names) &&
> +	    nvme_ctrl_state_names[ctrl->state])
> +		return nvme_ctrl_state_names[ctrl->state];
> +	return "unknown state";

Maybe just "unknown"?

Otherwise looks fine..

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
