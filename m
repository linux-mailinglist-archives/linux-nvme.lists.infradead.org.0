Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F327A12B27E
	for <lists+linux-nvme@lfdr.de>; Fri, 27 Dec 2019 08:55:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gsO6PzXhb87/jtlx/0+tyw+3dmkMYO+Gai2cnRtQfXI=; b=DsmY2TZq/MK29BQjs+mFCoxaJK
	Wj9yBRznNchGYSFL8uU/8VHftVJacxqfvVt8nlCUjIH8gfhyHHCrFn7QLkPZAj7h2pliX1AtEO5IK
	B9PXWjEo7+ZYb3SADqmrYtfbe9pPCryr9As6m8Fq1YXpB1A+Ly+VYXTvPD5H8AZCUuwZtuPyml2VX
	GuP6BqvLac8Mgma39T5G6qmHVulxFNxU1om/DL+S1om8IEpn1rjHK0kbYJA+XNDgC46ZI+EvwWGPU
	6VkJDIPx9IQZI5Wm1xal1tYVFJUA4BkAQbdqbbw+aH9J0vHOv7+Fobpwc2EyVyAnylxKUESAt35a7
	CvTiGaDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikkSY-0008Pg-2P; Fri, 27 Dec 2019 07:54:58 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikby5-0007nA-5m
 for linux-nvme@lists.infradead.org; Thu, 26 Dec 2019 22:50:58 +0000
Received: by mail-wr1-x42d.google.com with SMTP id q10so24693441wrm.11
 for <linux-nvme@lists.infradead.org>; Thu, 26 Dec 2019 14:50:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=zEewQrTTKtyOLnsHy8vzEb693IoITm64/QkCg20DvNQ=;
 b=COkXSZUBN1aybCaHWTYOyBGPbYV/XSdC3PyAWiikIRqtCzKfEZ2qkYONkZFEHrn6gS
 SIwaVl/EeaenYho3DVUkxZBi4SfMbs5SJS8D+FPwm4SlxGrIfmJU5bV5s58mR7LMXScb
 R5h3RkUlcezfmFwdLdsyPqJK4RWLX9RN8JLmvjlbF4FRCpWW8o4UOyExgl2kxnytG1rC
 aB7jA4//QxpSqoN6IMm47aq+KnASKKmZAsKk3xOhOgD41wHkGJTOe+7O63DrTbo+0wMo
 V+D8n3VgHXfrmJoPnEk0zaRsxyBJL3IR4n4lNHUl6/6UX3S+Yf/MPBdGyHh6LqdQKDFx
 LHVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=zEewQrTTKtyOLnsHy8vzEb693IoITm64/QkCg20DvNQ=;
 b=t7d9AYzyqcpUrObj6UOxg7N64JWb+qE2/3B3l5EcYV/ffts6JZ3FwZAyspdmQ2kT6r
 G4f4NjskVrimgHqE7rP1PAD5EtAI9Qaf4c0z4n0kgydpfWeA1kkkUojTTvArIsvjKz+X
 1m5/+7gan5p5aZ/NdtuvQBtia6bYm3TN5zDxWGxVk41esbDcwwD+PuzNmC5OYW0GvNlH
 I1Ydm4KorDvV77B3XW+rEhMAY/9IWMgftBRQX8gfa/CoyeiyxHNqkq3NvIeGXRRLnpM0
 zFt5MRTmR67ir+B8q9liS7EzEhvWTxY8dtkPx18IuPpFsu8/STWOfeetPv0TCmIO19BH
 bpMQ==
X-Gm-Message-State: APjAAAU4Kie1qs9RUWq79+Nr5s6Vvb/gnivtl7Zoc6VmGobypRH6Wv5E
 KOnWmrKenbfclDOng5CSwaghotq1JiUyu8CQJfzgzA==
X-Google-Smtp-Source: APXvYqyfc3BOrRznfbE0xKsL517kmDb3JfKGZIshL0Nt/7QCMSNfNa4HDYpOnvUOKzhdy6pceBdYdYoi2kaOCNEk1oU=
X-Received: by 2002:adf:fe07:: with SMTP id n7mr47952417wrr.286.1577400655388; 
 Thu, 26 Dec 2019 14:50:55 -0800 (PST)
MIME-Version: 1.0
References: <CABnqofwdPfb=RfCDUh6kU2CUV4v0xxVaT--rfQOZMJy6DG3MTQ@mail.gmail.com>
In-Reply-To: <CABnqofwdPfb=RfCDUh6kU2CUV4v0xxVaT--rfQOZMJy6DG3MTQ@mail.gmail.com>
From: Sudheendra Sampath <sudheendra.sampath@gmail.com>
Date: Thu, 26 Dec 2019 14:50:19 -0800
Message-ID: <CABnqofyB5uY2_USYyaHQOZyh6aONoa=sKX9=+REH6oivo44j2w@mail.gmail.com>
Subject: Fwd: Question about nvmetcli (tcp)
To: linux-nvme@lists.infradead.org
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_145057_240528_A6CD3D1A 
X-CRM114-Status: UNSURE (   7.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42d listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sudheendra.sampath[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Mailman-Approved-At: Thu, 26 Dec 2019 23:54:42 -0800
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

Apologies for flooding your inbox.

I am trying to setup a target -> initiator using nvmetcli.  Below is
my json file :

{
  "hosts": [],
  "ports": [
    {
      "addr": {
        "adrfam": "ipv4",
        "traddr": "192.168.123.32",
        "treq": "not specified",
        "trsvcid": "4420",
        "trtype": "tcp"
      },
      "portid": 1,
      "referrals": [],
      "subsystems": []
    }
  ],
  "subsystems": [
    {
      "allowed_hosts": [],
      "attr": {
        "allow_any_host": "1",
        "serial": "a33829313050f265",
        "version": "1.3"
      },
      "namespaces": [
        {
          "device": {
            "nguid": "00000000-0000-0000-0000-000000000000",
            "path": "/dev/nvme0n1",
            "uuid": "e8b0ccf0-9fce-4efc-877a-07c0f1ecc086"
          },
          "enable": 1,
          "nsid": 1
        }
      ],
      "nqn": "simnqn"
    }
  ]
}

When I run 'nvmetcli restore foo.json", I see the following in dmesg :

[Fri Dec 20 11:20:53 2019] nvmet: adding nsid 1 to subsystem simnqn
(On target system)     <<<<<

Now, from the client machine when I try to connect using 'nvme
connect', I get 'connection refused'.

root@initiator01:/home/ssgroot# nvme connect -t tcp -n simnqn -a
192.168.123.32 -s 4420
Failed to write to /dev/nvme-fabrics: Connection refused

The 'dmesg' output on the client system shows :

[Fri Dec 20 11:35:55 2019] nvme nvme0: failed to connect socket: -111
(On initiator system)   <<<<<

Any help appreciated.

-- 
Regards

Sudheendra Sampath

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
