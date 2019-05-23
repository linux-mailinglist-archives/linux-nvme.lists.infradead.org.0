Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7FE280B3
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 17:12:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0jrWBUIUFFNnIzshRq/esod8gca140Zxwqf6Bb70spY=; b=oI6Awup7MI+/sW
	ePqLcsGos+/ahv330G4KyjkYT7qFibAhTDAxgu0l+yy/Lmqs5ef88mdl69RuT5yH4UHd1+LQc412Z
	j0tUkOKb2ZhQhLLsnv/O0aKnWEeUR9tAnZBUH6uSlrw7apBbiyZs4JJUVdU8LnevRd5XRCbjCON35
	AXKbbXMIIFJPYa3BlFeL9MPLjY8mJs+gVHtmwYT6q6QY6EBA9YFQlSjbRiOoKHwpdTDACY2hZk+Gc
	dlIL63BMUuJtr7DXUrZsgmo4SYOttRYaIncIWip1YO7bQU1pYq994FQ/55Z9zXQ+hg8IvPRSNW1MR
	OzqkDbbDFy3bRje13+ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTpO1-00082H-1K; Thu, 23 May 2019 15:12:05 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTpNj-0007l3-Jw
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 15:11:57 +0000
Received: by mail-pg1-x543.google.com with SMTP id v11so3299840pgl.5
 for <linux-nvme@lists.infradead.org>; Thu, 23 May 2019 08:11:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PGO2uvywz4lLyUTM547QbwPysL57LojWAlrdDJjWmPM=;
 b=pz4CrvoSh2xv9GXzCJtJZgDosqyrqDNMX9UncZpQEdtOjpsRd+544Uhj9hZFUWmzWm
 Vwcsbx7YeV0TQ24RdG61WbrIevi1savxQDbwvRKvwx33MSnpVBTypBMY5/ROO6jpC8Tg
 VRkVkud+Y8r5pS5LtBtolWrGX+F4mTrDR+FAlDnAQjP5QApOsdAfE/mWdLKLksEat21Q
 1/vL9Z/tbwVUSNNIG5faLoZXFt592/MX4kc3SUer810jjyjjpSsHwEqREVqcKMCIZq6g
 pCk6RP84Y1cr5VKUuWZMil8fb/Lo8SGpAViOoC01hMF5oYbVLMns8Iu12a3EpKscN9l4
 Ajng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PGO2uvywz4lLyUTM547QbwPysL57LojWAlrdDJjWmPM=;
 b=S4zPWfosrfcWz+JcCNewk5dbVWuXAgu8PNL+oZeu40MdNdDaHz8dg8ogEkz4nOgTvK
 Ht4Ms5ZXRDCweYou5xug4N3cQh2Yw9Y+FnyyH968/3AYigPtDlqOvVG85rE+Kru7E5x4
 jokNfU6dR0hNLre4ulshMEWfrSTy9T3bawsUS8KlMo4C2nF83KcwydBER9RhABIXClOF
 3t8mlUrhPS/xKsIu8w0d+p+4zu4pt+dJSOwkZ0xwKVbDhIRxoMOk0QZq2Cp1s7zfl6VJ
 /J14YkJHiRkldasR3kMFggSs1LyilaZIc+FFOKDey4TjZy6WncTcdntJR41kB4yTw7qV
 Z5IQ==
X-Gm-Message-State: APjAAAUM6FkWue/yuHGctbAZu4V8DJxT34I9h2BWGDS0rSb3j6376dUz
 y5BeI+5gMdFfsmgaEsx6AVs=
X-Google-Smtp-Source: APXvYqxqU9KX6/VGd/n2mclJKEDeOMhpsdkGB2SPoxfD4/+OgqdF/Qo10LlhkkX69jeLWuy/4zX51Q==
X-Received: by 2002:a65:56c3:: with SMTP id w3mr4841925pgs.232.1558624306818; 
 Thu, 23 May 2019 08:11:46 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id z4sm33584902pfa.142.2019.05.23.08.11.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 23 May 2019 08:11:46 -0700 (PDT)
Date: Fri, 24 May 2019 00:11:43 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 9/9] nvme: Retrieve namespaces during list-subsys cmd
Message-ID: <20190523151141.GA27763@minwooim-desktop>
References: <1558602058-29434-1-git-send-email-maxg@mellanox.com>
 <1558602058-29434-10-git-send-email-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558602058-29434-10-git-send-email-maxg@mellanox.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_081148_450256_1D633CC7 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: sagi@grimberg.me, martin.petersen@oracle.com,
 linux-nvme@lists.infradead.org, shlomin@mellanox.com, kbusch@kernel.org,
 hch@lst.de, minwoo.im@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-05-23 12:00:58, Max Gurtovoy wrote:
> Add an association between subsystems/ctrls/namespaces using
> "nvme list-subsys" command. Now this command will show the following:
> 
> nvme-subsys3 - NQN=nqn.2014.08.org.nvmexpress:80868086CVCQ5234001C400AGN INTEL SSDPEDMW400G4
> \
>  +- nvme0 pcie 0000:08:00.0 live
>  \
>   +- nvme3n1
> nvme-subsys4 - NQN=testsubsystem_0
> \
>  +- nvme4 rdma traddr=1.212.99.85 trsvcid=4420 live
>  \
>   +- nvme4c1n1
>   +- nvme4c1n2
>   +- nvme4c1n3
>  +- nvme5 rdma traddr=1.212.99.85 trsvcid=4420 live
>  \
>   +- nvme4c2n1
>   +- nvme4c2n2
>   +- nvme4c2n3
> 

Tested-by: Minwoo Im <minwoo.im.dev@gmail.com>

> The new json output is (partial):
> --------------------------
> {
>       "Name" : "nvme-subsys4",
>       "NQN" : "testsubsystem_0",
>       "Ctrls" : [
>         {
>           "Name" : "nvme4",
>           "Transport" : "rdma",
>           "Address" : "traddr=1.212.99.85 trsvcid=4420",
>           "State" : "live",
>           "Namespaces" : [
>             {
>               "Name" : "nvme4c1n1"
>             },
>             {
>               "Name" : "nvme4c1n2"
>             },
>             {
>               "Name" : "nvme4c1n3"
>             }
>           ]
>         },
>         {
>           "Name" : "nvme5",
>           "Transport" : "rdma",
>           "Address" : "traddr=1.212.99.85 trsvcid=4420",
>           "State" : "live",
>           "Namespaces" : [
>             {
>               "Name" : "nvme4c2n1"
>             },
>             {
>               "Name" : "nvme4c2n2"
>             },
>             {
>               "Name" : "nvme4c2n3"
>             }
>           ]
>         }
>       ]
> }
> 
> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
