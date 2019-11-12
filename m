Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A35F98D6
	for <lists+linux-nvme@lfdr.de>; Tue, 12 Nov 2019 19:35:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZPCV2AVX+b1xiwPfX/HgkeJq55WLDV3ptqmolmSpsyA=; b=MtfRzMKWEZYRA79FZ3rzNpo26
	8YUjrPXKtnJqJEibm9SC9RvyZ1j8pFPgDlxKkSglFJn9S+TAGJsQ4pwS0w/miNbSjmezYjQXAEhbM
	ECEBOpHa58qKwOcfqizeQH8yb6iGrjpMEvcfZw5EqiVKOJfL3bqGLVdkWDT6WustEBs5sy9uuBDAj
	0RbREm9WPaHdqxpyf5R/yFin2gatT1urV2lTphJRJ2XQM6dKHO7C7ujT/tXMnP1LZxqz1RSXQ3+Rj
	BaVczY1XednqkldRNYm9ln4rFPPX88hxI4hDL1PSQork4r01RpqJryucoerwcbgCsCqmfsZkySzkj
	k1awM1L5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUb0p-0001ix-1M; Tue, 12 Nov 2019 18:35:35 +0000
Received: from mail-ot1-f54.google.com ([209.85.210.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUb0K-0000Yk-JX
 for linux-nvme@lists.infradead.org; Tue, 12 Nov 2019 18:35:06 +0000
Received: by mail-ot1-f54.google.com with SMTP id m15so15189492otq.7
 for <linux-nvme@lists.infradead.org>; Tue, 12 Nov 2019 10:35:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VpTUgkOXAU+Nv6gPqXh+VMnQ/kTwIi1avxw5bhq1shI=;
 b=iMhf/Kjv+keM09t0m9tEtnEcP36WxipGMeBDOUmsm5bz5tuc/rJR8agXi7XxvyfHNk
 DXPNZrbNsizGeNMi+T1BnjSa2RZ/h6G8TOb3jpcsFV0D8eL0oKHcFWKCboaNxJoP3lbJ
 eLZ+1CeVBB8z1FYa/HQLIv4FjXnQX/qVhkSDkUmFQDFVCWnIZLbA0K/kDT+JtNaJngP4
 /MHRvFlDi2DGQ2dtQDgSql6iZ8bdeEIOZvc4G0QogiXIoAAZHXFWGa4DQvP0G2XdbdpO
 6Dcry8vSeWtieemsVjbcOTUru+gDdTHd9e6tl1kgDNH0iZgAGlei5QlkvejjgXO7RmvF
 A6nA==
X-Gm-Message-State: APjAAAXtIG3wlduPHqJoF4QRLTsOfdCEFWx8mxjmErT3+Pvk1Qibzy1a
 4hHIgY+46QTf2H8dmrEof9M=
X-Google-Smtp-Source: APXvYqyLE2bKv9hVZEA3wYK5YbaCOkaKa1sePVDhboAw1mPZZdPgcxHk/RJuhfOhyLN0IQysfTgj/A==
X-Received: by 2002:a9d:4616:: with SMTP id y22mr25708394ote.319.1573583703163; 
 Tue, 12 Nov 2019 10:35:03 -0800 (PST)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id o22sm6022437otk.47.2019.11.12.10.35.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 Nov 2019 10:35:02 -0800 (PST)
Subject: Re: [PATCH 15/15] nvmet-rdma: Add metadata/T10-PI support
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org,
 kbusch@kernel.org, hch@lst.de
References: <20191105162026.183901-1-maxg@mellanox.com>
 <20191105162026.183901-17-maxg@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <24d8febb-7ddd-3461-dd60-aa73b1d58f1c@grimberg.me>
Date: Tue, 12 Nov 2019 10:34:58 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191105162026.183901-17-maxg@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_103504_644408_1DB77D12 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.54 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.54 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
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
Cc: israelr@mellanox.com, oren@mellanox.com, idanb@mellanox.com,
 vladimirk@mellanox.com, shlomin@mellanox.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



> +	if (ndev->pi_capable && nvmet_rdma_pi_enable && queue->host_qid)
> +		qp_attr.create_flags |= IB_QP_CREATE_INTEGRITY_EN;
> +

Max,

It will really be much better if this comes in the rdma_cm
private_data... Have you considered to get this trhough the TWG?

>   	ret = rdma_create_qp(queue->cm_id, ndev->pd, &qp_attr);
>   	if (ret) {
>   		pr_err("failed to create_qp ret= %d\n", ret);
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
