Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 254A36D7CD
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 02:34:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=LKvMVPYPmlxWzmJRS/P8M16Eo
	UiOUUEr1e6Zj8VKUGKVygsq/cm+2ldS+oC1K5vpfgwyPv4TryPiCIWU2cFt0cnExQIPOwJK3IYIdR
	dLoJOeOH/Ls5KQ6PVOBaLaaPr6CQgwnnzQLbGUORIVwhDhi5aiKoZafVDWFApAhJM0LE5J+Lj/uZ9
	pZn4vRbny1sz5YgF0LJ9wKVN49pSsjXkVredQI24haBhjWBsvCLBeYnNyU2HiL2eR2ELng7t9EB5+
	Z+bRAvnydF76uoqZfN+SE4BdQHilVUPDTeShk8rAHHe56hlc/Yov6r+BUpPl3Z6LOXVyYXV25IU3m
	wwjrWwiSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoGrJ-0002vU-Uk; Fri, 19 Jul 2019 00:34:50 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoGr9-0002uv-0I
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 00:34:40 +0000
Received: by mail-ot1-f65.google.com with SMTP id d17so31047623oth.5
 for <linux-nvme@lists.infradead.org>; Thu, 18 Jul 2019 17:34:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=kuif+5RcC9uB9AdJCCqoC0v5aRS9wGbc80R6EuwdmOgTXMuNNkH2i/5VWSxEkwI9jD
 oF1knV1a2/wA643hvDfqdXu5ObjX5DTPmxF0o57l783yuLJO1o0syszChMth3J90x2Xj
 PuuxwtvvHhN7KbZtYIimH1AeCWmPCQRzzh2a4GDpEgQtXGk9Wui/79jQSDr5b0kOfJI3
 vuXnCCoVWwuqnILFkyZT3u97u7orCM58gGmXMPANi2XtYTne3QqeqAU4XxqubtxySNiL
 3LbGrwxnLxOzJTLvGf1ZKyE8ysz24ViLPUwrnHubvuCEELpvS2dha3GcLYgDALY3b7gV
 PGvQ==
X-Gm-Message-State: APjAAAUTvmJ1FzHAls93+UNAJ3VftUB7jjrOI9vTGRm1JqL0acSswWRM
 OhNGT/O72//HxTvd/NEhUhg=
X-Google-Smtp-Source: APXvYqxjJhVstz9UEPpbmmpAv8Xs05SQWLzowgSrKFEckA2qouCNswnNQKk4YlgrX7tUv5lojJbWtA==
X-Received: by 2002:a9d:2967:: with SMTP id d94mr36169768otb.12.1563496478374; 
 Thu, 18 Jul 2019 17:34:38 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id b138sm10032404oii.7.2019.07.18.17.34.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jul 2019 17:34:37 -0700 (PDT)
Subject: Re: [PATCH 06/10] nvme-cli: Add routine to compare ctrl_list_item to
 connect args
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190716211241.7650-1-jsmart2021@gmail.com>
 <20190716211241.7650-7-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <71140834-7099-c418-ea02-2ce53c5274de@grimberg.me>
Date: Thu, 18 Jul 2019 17:34:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716211241.7650-7-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_173439_054246_44937C40 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
